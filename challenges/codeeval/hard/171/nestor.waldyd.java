import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author waldyd
 */
public class Main {
    
        static final int MATCH = 3;
    //static final int MATCH = 1;
    static final int MISMATCH = -3;
    //static final int MISMATCH = -2;
    // Gap Penalty
    //// Affine Gap GAP_OPENING_PENALTY + GAP_EXTENSION_PENALTY(L-1)
    static final int GAP_OPENING_PENALTY = -8; //indel
    //static final int GAP_OPENING_PENALTY = -7; //indel
    static final int GAP_EXTENSION_PENALTY = -1;
    //static final int GAP_EXTENSION_PENALTY = -2;
    //static String alignment = "LOCAL"; 
    static String alignment = "GLOBAL"; 
    
    
    /*private static void WriteToCSV (int[][][] matrix, String filename) throws IOException{
        BufferedWriter br = new BufferedWriter(new FileWriter(filename+".csv"));
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < matrix.length; i++) {
            for (int j = 0; j < matrix[0].length; j++) {
                for (int element : matrix[i][j]) {
                    sb.append(element);
                    sb.append(",");
                }
                sb.append("\n");
            }
        }
        br.write(sb.toString());
        br.close();
    }*/
    
    private static int score (String[] dnaSequence) {
        int score, indel;
        
        score = 0;
        indel = 0;
        // TODO Improve This!
        for(int i =0; i < dnaSequence[0].length();i++){
            if(dnaSequence[0].charAt(i) == dnaSequence[1].charAt(i) && dnaSequence[0].charAt(i) != '-' && dnaSequence[1].charAt(i) != '-') score+=3;
            else if ((dnaSequence[0].charAt(i) != dnaSequence[1].charAt(i)) && dnaSequence[0].charAt(i) != '-' && (dnaSequence[1].charAt(i) != '-'))  score+= -3;
        }
        // How about this for only '-' matches ([^-]-[^-])?
        for (String dnaSequence1 : dnaSequence) {
            if (dnaSequence1.matches(".*((?<!-)-(?!-)).*")) {
                //(^-[ACGT]).*|.*([ACGT]-[ACGT]).*|.*([ACGT]-$)
                Pattern pattern = Pattern.compile("(?<!-)-(?!-)");//"(^-[ACGT])|([ACGT]-[ACGT])|([ACGT]-$)"
                Matcher matcher = pattern.matcher(dnaSequence1);
                while (matcher.find()) indel++;
                score += (indel) * (GAP_OPENING_PENALTY);
                indel=0;
            }
            if (dnaSequence1.matches(".*(-{2,}).*")) {
                Pattern pattern = Pattern.compile("(-{2,})"); //((?<=[ACGT])-{2,})
                Matcher matcher = pattern.matcher(dnaSequence1);
                while (matcher.find()) {
                    //indel++;
                    score += GAP_OPENING_PENALTY + (GAP_EXTENSION_PENALTY)*(matcher.group(/*indel-*/1).length() - 1);
                }
                //indel=0;
            }
        }
        return score;
    }
    
    private static int[] MaxMatrixLocation(int[][] matrix){
        int[] return_= new int[] { 0, 0, 0 };
	for (int i = 0; i < matrix.length; i++) {
                for (int j = 0; j < matrix[0].length; j++) {
                        if (matrix[i][j] > return_[0]) {
                                return_[0] = matrix[i][j];
                                return_[1] = i;
                                return_[2] = j;
                        }
                }
        }
        return return_;
    }
    
    private static int[] MaxMatrixLocation(int[][][] matrix){
        int[] return_= new int[] { Integer.MIN_VALUE/2, 0, 0, 0 };
	for (int i = 0; i < matrix.length; i++) {
                for (int j = 0; j < matrix[0].length; j++) {
                    for (int k = 0; k < matrix[0][0].length; k++) {
                        if (matrix[i][j][k] > return_[0]) {
                                return_[0] = matrix[i][j][k];
                                return_[1] = i;
                                return_[2] = j;
                                return_[3] = k;
                        }
                    }
                }
        }
        return return_;
    }
    
    //Needleman-Wunsch algorithm simple gap cost
    private static int[][] NeedlemanWunschMatriz(String a, String b, int d, int[][] similarityMatrix) {
        int[][] NWMatrix = new int[a.length() + 1][b.length() + 1];

        for (int i = 0; i <= a.length(); i++) NWMatrix[i][0] = i*d;
        for (int j = 0; j <= b.length(); j++) NWMatrix[0][j] = j*d;
        for (int i = 1; i <= a.length(); i++) {
            for (int j = 1; j <= b.length(); j++) {
                NWMatrix[i][j] = Math.max((Math.max(NWMatrix[i - 1][j] + d,                         /*delete (indel)*/
                                                    NWMatrix[i][j - 1] + d)),                       /*insert (indel)*/
                                                    NWMatrix[i-1][j-1] + similarityMatrix[i-1][j-1]);   //substitution
            }
        }
        return NWMatrix;
    }
    
    //Smith-Waterman algorithm affine gap cost
    private static int[][][] SmithWatermanMatriz(String a, String b, final int INITIAL_GAP, final int EXTENDED_GAP, int[][] similarityMatrix, String alignment){
        //INITIAL_GAP + EXTENDED_GAP <= lowest mismatch score
        int[][][] H;
        int[][] M = new int[a.length() + 1][b.length() + 1];
        int[][] Ix = new int[a.length() + 1][b.length() + 1];
        int[][] Iy = new int[a.length() + 1][b.length() + 1];
        
        // Initialization: http://bioinfo.uncc.edu/zhx/binf8201/lecture-12-sequence_alignment-2.pdf
        //                 https://faculty.unlv.edu/schulte/BIO480/SequenceAlign.pdf
        for (int i = 1; i <= a.length(); i++) {
            if("LOCAL".equals(alignment)) M[i][0] = Iy[i][0] = Ix[i][0] = 0;
            else if ("GLOBAL".equals(alignment)) {
                Iy[i][0] = INITIAL_GAP + EXTENDED_GAP * (i - 1); 
                Ix[i][0] = M[i][0] = Integer.MIN_VALUE/2;       //-Inf
                Ix[i][1] = INITIAL_GAP;
            }                      
        }
        for (int j = 1; j <= b.length(); j++) {
            if("LOCAL".equals(alignment)) M[0][j] = Ix[0][j] = Iy[0][j] = 0;
            else if ("GLOBAL".equals(alignment)) {
                Iy[0][j] = M[0][j] = Integer.MIN_VALUE/2;
                Iy[1][j] = INITIAL_GAP;
                Ix[0][j] = INITIAL_GAP + EXTENDED_GAP * (j - 1);  
            }
        }
        if("GLOBAL".equals(alignment)) Ix[0][0] = Iy[0][0] = Integer.MIN_VALUE/2;
        M[0][0]=0;
        
        for (int i = 1; i <= a.length(); i++) {
            for (int j = 1; j <= b.length(); j++) {
                //substitution
                if("GLOBAL".equals(alignment)) {
                    M[i][j] = Math.max((Math.max(Iy[i-1][j-1] + similarityMatrix[i-1][j-1], 
                                                 Ix[i-1][j-1] + similarityMatrix[i-1][j-1])), 
                                                 M[i-1][j-1] + similarityMatrix[i-1][j-1]);
                }                
                else if ("LOCAL".equals(alignment)) {
                    M[i][j] =           Math.max(0, 
                              Math.max((Math.max(Iy[i-1][j-1] + similarityMatrix[i-1][j-1], 
                                                 Ix[i-1][j-1] + similarityMatrix[i-1][j-1])), 
                                                 M[i-1][j-1] + similarityMatrix[i-1][j-1]));
                }
                /*delete (indel) VERTICAL*/ 
                // Afine Gap d+e(l-1)
                // https://www.cs.cmu.edu/~ckingsf/bioinfo-lectures/gaps.pdf
                /*Iy[i][j] = Math.max((Math.max(Ix[i-1][j] + INITIAL_GAP + EXTENDED_GAP, 
                                              Iy[i-1][j] + EXTENDED_GAP)), 
                                              M[i-1][j] + INITIAL_GAP + EXTENDED_GAP);*/
                
                /*Iy[i][j] = Math.max((Math.max(Ix[i-1][j] + INITIAL_GAP, 
                                              Iy[i-1][j] + EXTENDED_GAP)), 
                                              M[i-1][j] + INITIAL_GAP);*/
                //http://www.public.asu.edu/~cbaral/cse591-s03/classnotes/seq-align.pdf
                //http://bioinfo.uncc.edu/zhx/binf8201/lecture-12-sequence_alignment-2.pdf
                Iy[i][j] = Math.max((Iy[i-1][j] + EXTENDED_GAP), 
                                    (M[i-1][j] + INITIAL_GAP));
                // Afine Gap n+m(l)
                /*Iy[i][j] = Math.max((Iy[i-1][j] + EXTENDED_GAP), 
                                    (M[i-1][j] + INITIAL_GAP - EXTENDED_GAP));*/
                /******insert (indel) HORIZONTAL*/
                // Afine Gap d+e(l-1)
                // https://www.cs.cmu.edu/~ckingsf/bioinfo-lectures/gaps.pdf
                /*Ix[i][j] = Math.max((Math.max(Ix[i][j-1] + EXTENDED_GAP, 
                                              Iy[i][j-1] + INITIAL_GAP + EXTENDED_GAP)), 
                                              M[i][j-1] + INITIAL_GAP + EXTENDED_GAP);*/
                
                /*Ix[i][j] = Math.max(https://www.cs.cmu.edu/~ckingsf/bioinfo-lectures/gaps.pdf(Math.max(Ix[i][j-1] + EXTENDED_GAP, 
                                              Iy[i][j-1] + INITIAL_GAP)), 
                                              M[i][j-1] + INITIAL_GAP);*/
                //http://www.public.asu.edu/~cbaral/cse591-s03/classnotes/seq-align.pdf
                //http://bioinfo.uncc.edu/zhx/binf8201/lecture-12-sequence_alignment-2.pdf
                Ix[i][j] = Math.max((Ix[i][j-1] + EXTENDED_GAP), 
                                    (M[i][j-1] + INITIAL_GAP));
                // Afine Gap n+m(l)
                /*Ix[i][j] = Math.max((Ix[i][j-1] + EXTENDED_GAP), 
                                    (M[i][j-1] + INITIAL_GAP - EXTENDED_GAP));*/
            }
        }
        H = new int[][][] { M, Ix, Iy };
        return H;
    }
    
    //Needleman-Wunsch algorithm affine gap cost
//    private static int[][] SmithWatermanMatriz(String a, String b, final int INITIAL_GAP, final int EXTENDED_GAP, int[][] similarityMatrix) {
//        a = "-" + a;
//        b = "-" + b;
//        int[][] SWMatrix = new int[a.length()][b.length()];
//        int gap_lenght = 0;
//        int gap = 0;
//
//        for (int i = 0; i < a.length(); i++) SWMatrix[i][0] = i*gap;
//        for (int j = 0; j < b.length(); j++) SWMatrix[0][j] = j*gap;
//        for (int i = 1; i < a.length(); i++) {
//            for (int j = 1; j < b.length(); j++) {
//                if (gap_lenght>0) gap = INITIAL_GAP + EXTENDED_GAP*(gap_lenght - 1);
//                if (a.charAt(i) == b.charAt(j)) {
//                        // if match reset gap lenght
//                        gap_lenght = 0;
//                        SWMatrix[i][j] = Math.max(0, 
//                                                  Math.max(SWMatrix[i - 1][j - 1] + similarityMatrix[i][j], /*substitution*/
//                                                           Math.max(SWMatrix[i - 1][j] + gap,                   /*delete (indel)*/
//                                                                    SWMatrix[i][j - 1] + gap)));                /*insert (indel)*/
//                } else {
//                        // gap
//                        gap_lenght++;
//                        SWMatrix[i][j] = Math.max(0, 
//                                                  Math.max(SWMatrix[i - 1][j - 1] + similarityMatrix[i][j],                    
//                                                           Math.max(SWMatrix[i - 1][j] + gap,               
//                                                                    SWMatrix[i][j - 1] + gap)));            /*insert (indel)*/
//                }
//            }
//        }
//        return SWMatrix;
//    }
    
    private static int[][] SimilarityMatrix(String a, String b, final int MATCH, final int MISMATCH) {
        //Wagner-Fischer algorithm
        int[][] similarityMatrix = new int[a.length()][b.length()];
        
        //for (int i = 0; i <= a.length(); i++) similarityMatrix[i][0] = i;
        //for (int j = 0; j <= b.length(); j++) similarityMatrix[0][j] = j;
        for (int i = 0; i < a.length(); i++) {
            for (int j = 0; j < b.length(); j++) {
                if (a.charAt(i) == b.charAt(j)) similarityMatrix[i][j]=MATCH;
                else similarityMatrix[i][j]=MISMATCH;
            }
        }
        return similarityMatrix;
    }
    
    /**
     * @param args
     * @throws java.io.IOException
     */
    public static void main (String[] args) throws IOException, NullPointerException {
        
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        String[] dnaSequences;
        StringBuilder[] dnaSequences_= new StringBuilder[2];
        int score;
        int [] maxAlignmentCost;
        int[] alignmentinit = new int[4];
        //int [][][] NWMatrix;
        int [][][] SWMatrix;
        int[][] similarity;
        
        
        score=0;
        while ((line = buffer.readLine()) != null) {
            if(line.charAt(0) == '#') continue;
            line = line.trim();
            dnaSequences = line.split(".\\|.");
            similarity = SimilarityMatrix(/*"-"+*/dnaSequences[0],/*"-"+*/dnaSequences[1], MATCH, MISMATCH);
            //similarity = SimilarityMatrix(dnaSequences[0], dnaSequences[1], MATCH, MISMATCH);
            //NWMatrix = NeedlemanWunschMatriz(dnaSequences[0],dnaSequences[1],-8, similarity);
            //NWMatrix = NeedlemanWunschMatriz(dnaSequences[0],dnaSequences[1], GAP_OPENING_PENALTY, GAP_EXTENSION_PENALTY, similarity);
            SWMatrix = SmithWatermanMatriz(/*"-"+*/dnaSequences[0],/*"-"+*/dnaSequences[1], GAP_OPENING_PENALTY, GAP_EXTENSION_PENALTY, similarity, alignment);
            //WriteToCSV(SWMatrix,"SWMatriz");
            dnaSequences_[0] = new StringBuilder();
            dnaSequences_[1] = new StringBuilder();
            
            // Modified Needleman-Wunsch algorithm
            /*for (int i = dnaSequences[0].length(), j = dnaSequences[1].length(); i > 0 || j > 0; ) {
                if (i > 0  && j > 0  && NWMatrix[i][j] == NWMatrix[i-1][j-1] + similarity[i-1][j-1] ) {
                    dnaSequences_[0].append(dnaSequences[0].charAt(--i));
                    dnaSequences_[1].append(dnaSequences[1].charAt(--j));
                    //dnaSequences_[1].append("-");
                } else if (i > 0 && NWMatrix[i][j] == NWMatrix[i-1][j] + (GAP_OPENING_PENALTY) ) {
                    dnaSequences_[0].append(dnaSequences[0].charAt(--i));
                    dnaSequences_[1].append("-");                    
                } else {
                    dnaSequences_[0].append("-");
                    //dnaSequences_[0].append(dnaSequences[0].charAt(i++));
                    dnaSequences_[1].append(dnaSequences[1].charAt(--j));
                }
            }*/
            
            //
                        
            //Stack<String> actions = new Stack<String>();
            /*for (int i = maxAlignmentCost[2], j = maxAlignmentCost[3]; i > 0 && j > 0; ) {
            //while (i != 0 && j != 0) {
                    // diagonal case (align)
                    if (Math.max(NWMatrix[k][i - 1][j - 1],
                                 Math.max(NWMatrix[k][i - 1][j], 
                                          NWMatrix[k][i][j - 1])) 
                        == NWMatrix[k][i - 1][j - 1]) {
                        dnaSequences_[0].append(dnaSequences[0].charAt(--i));
                        dnaSequences_[1].append(dnaSequences[1].charAt(--j));
                    // left case (insert)
                    } else if (Math.max(NWMatrix[i - 1][j - 1],
                                        Math.max(NWMatrix[i - 1][j],
                                                 NWMatrix[i][j - 1])) 
                               == NWMatrix[i][j - 1]) {
                    dnaSequences_[0].append("-");
                    dnaSequences_[1].append(dnaSequences[1].charAt(--j));
                    // up case (delete)
                    } else {
                    dnaSequences_[0].append(dnaSequences[0].charAt(--i));
                    dnaSequences_[1].append("-");
                    }
            }*/
            maxAlignmentCost = MaxMatrixLocation(SWMatrix);
            if("LOCAL".equals(alignment)) {
                alignmentinit = maxAlignmentCost;
                dnaSequences[0] = "-"+dnaSequences[0];
                dnaSequences[1] = "-"+dnaSequences[1];
                for (int i = alignmentinit[1], j = 1/*alignmentinit[2]*/, k = 1/*alignmentinit[3]*/; j < dnaSequences[0].length() && k < dnaSequences[1].length(); ) {
                    //while (i != 0 && j != 0) {
                    //NWMatrix = F = new int[][][] { M, Ix, Iy };
                    // diagonal case (align) M
                    switch (i) {
                        // diagonal case (align)
                        case 0: dnaSequences_[0].append(dnaSequences[0].charAt(j++));
                                dnaSequences_[1].append(dnaSequences[1].charAt(k++));
                                break;
                        // up case (insert) Iy
                        case 2: dnaSequences_[0].append("-");
                                dnaSequences_[1].append(dnaSequences[1].charAt(k++));
                                break;
                        // left case (delete) Ix
                        case 1: dnaSequences_[0].append(dnaSequences[0].charAt(j++));
                                dnaSequences_[1].append("-");
                                break;
                    }

                    // Affine Gap Traceback
                    if (j < dnaSequences[0].length() && k < dnaSequences[1].length()) {
                        if (Math.max(SWMatrix[0][j - 1][k - 1],
                                     Math.max(SWMatrix[1][j][k - 1], 
                                              SWMatrix[2][j - 1][k])) 
                            == SWMatrix[0][j - 1][k - 1]) i = 0;
                        else if (Math.max(SWMatrix[0][j - 1][k - 1],
                                          Math.max(SWMatrix[1][j][k - 1], 
                                                   SWMatrix[2][j - 1][k]))
                                 == SWMatrix[1][j][k - 1]) i = 2;
                        else if (Math.max(SWMatrix[0][j - 1][k - 1],
                                          Math.max(SWMatrix[1][j][k - 1], 
                                                   SWMatrix[2][j - 1][k])) 
                                 == SWMatrix[2][j-1][k]) i = 1;
                    }
                }
                dnaSequences_[0] = dnaSequences_[0].reverse();
                dnaSequences_[1] = dnaSequences_[1].reverse();
            }
            else if ("GLOBAL".equals(alignment)) {
                alignmentinit[0] = maxAlignmentCost[0];         //max
                alignmentinit[1] = 0;//maxAlignmentCost[1];         //i
                alignmentinit[2] = dnaSequences[0].length()-1;    //j
                alignmentinit[3] = dnaSequences[1].length()-1;    //k
                score = Math.max(SWMatrix[0][dnaSequences[0].length()][dnaSequences[1].length()],
                                     Math.max(SWMatrix[1][dnaSequences[0].length()][dnaSequences[1].length()], 
                                              SWMatrix[2][dnaSequences[0].length()][dnaSequences[1].length()]));
                //dnaSequences[0] = "-" + dnaSequences[0];
                //dnaSequences[1] = "-" + dnaSequences[1];
                for (int i = alignmentinit[1], j = alignmentinit[2], k = alignmentinit[3]; j >= 0 && k >= 0; ) {
                    // Affine Gap Traceback
                    switch (i) {
                        case 0:
                            j+=1;
                            k+=1;
                            break;
                        case 1:
                            //j+=0;
                            k+=1;
                            break;
                        default:
                            j+=1;
                            //k+=0;
                            break;
                    }
                        if (j > 0 && k > 0) {
                            /*if (Math.max(SWMatrix[0][j - 1][k - 1],
                                     Math.max(SWMatrix[1][j][k - 1], 
                                              SWMatrix[2][j - 1][k])) 
                                == SWMatrix[0][j - 1][k - 1]) i = 0;
                            else if (Math.max(SWMatrix[0][j - 1][k - 1],
                                              Math.max(SWMatrix[1][j][k - 1], 
                                                       SWMatrix[2][j - 1][k])) 
                                    == SWMatrix[2][j-1][k]) i = 2;
                            else if (Math.max(SWMatrix[0][j - 1][k - 1],
                                              Math.max(SWMatrix[1][j][k - 1], 
                                                       SWMatrix[2][j - 1][k]))
                                    == SWMatrix[1][j][k - DNAAlignment.java:4361]) i = 1;*/
                            
                            if (Math.max(Math.max(Math.max(SWMatrix[0][j-1][k-1],
                                                            Math.max(SWMatrix[1][j-1][k-1], 
                                                                     SWMatrix[2][j-1][k-1])),
                                                   Math.max(SWMatrix[0][j][k - 1],
                                                            Math.max(SWMatrix[1][j][k - 1], 
                                                                     SWMatrix[2][j][k-1]))),
                                          Math.max(SWMatrix[0][j-1][k],
                                                   Math.max(SWMatrix[1][j-1][k], 
                                                            SWMatrix[2][j-1][k])))
                                    == Math.max(SWMatrix[0][j-1][k-1],
                                                            Math.max(SWMatrix[1][j-1][k-1], 
                                                                     SWMatrix[2][j-1][k-1]))) i = 0;
                            else if (Math.max(Math.max(Math.max(SWMatrix[0][j-1][k-1],
                                                            Math.max(SWMatrix[1][j-1][k-1], 
                                                                     SWMatrix[2][j-1][k-1])),
                                                   Math.max(SWMatrix[0][j][k - 1],
                                                            Math.max(SWMatrix[1][j][k - 1], 
                                                                     SWMatrix[2][j][k-1]))),
                                          Math.max(SWMatrix[0][j-1][k],
                                                   Math.max(SWMatrix[1][j-1][k], 
                                                            SWMatrix[2][j-1][k])))
                                    == Math.max(SWMatrix[0][j-1][k],
                                                   Math.max(SWMatrix[1][j-1][k], 
                                                            SWMatrix[2][j-1][k]))) i = 2;
                            else if (Math.max(Math.max(Math.max(SWMatrix[0][j-1][k-1],
                                                            Math.max(SWMatrix[1][j-1][k-1], 
                                                                     SWMatrix[2][j-1][k-1])),
                                                   Math.max(SWMatrix[0][j][k - 1],
                                                            Math.max(SWMatrix[1][j][k - 1], 
                                                                     SWMatrix[2][j][k-1]))),
                                          Math.max(SWMatrix[0][j-1][k],
                                                   Math.max(SWMatrix[1][j-1][k], 
                                                            SWMatrix[2][j-1][k])))
                                    == Math.max(SWMatrix[0][j][k - 1],
                                                            Math.max(SWMatrix[1][j][k - 1], 
                                                                     SWMatrix[2][j][k-1]))) i = 1;
                            
                        }
                       
                        switch (i) {
                        case 0:
                            j-=1;
                            k-=1;
                            break;
                        case 1:
                            //j-=0;
                            k-=1;
                            break;
                        default:
                            j-=1;
                            //k-=0;
                            break;
                    }
                    
                    //while (i != 0 && j != 0) {
                    //NWMatrix = F = new int[][][] { M, Ix, Iy };
                    // diagonal case (align) M
                    //if (j != 0 && k != 0) {
                        switch (i) {
                            // diagonal case (align)
                            case 0: dnaSequences_[0].append(dnaSequences[0].charAt(j--));
                                    dnaSequences_[1].append(dnaSequences[1].charAt(k--));
                                    break;
                            // left case (insert) Iy
                            case 1: dnaSequences_[0].append("-");
                                    dnaSequences_[1].append(dnaSequences[1].charAt(k--));
                                    break;
                            // up case (delete) Iy
                            case 2: dnaSequences_[0].append(dnaSequences[0].charAt(j--));
                                    dnaSequences_[1].append("-");
                                    break;
                        }
                }
            }
            
            
            
            
            //dnaSequences_[0] = dnaSequences_[0].reverse();
            //dnaSequences_[1] = dnaSequences_[1].reverse();
            dnaSequences[0] = dnaSequences_[0].reverse().toString();
            dnaSequences[1] = dnaSequences_[1].reverse().toString();
            //System.out.println(dnaSequences[0]);
            //System.out.println(dnaSequences[1]);
            //System.out.println(score(dnaSequences));
            System.out.println(score);
        }
        // Test Score
        /*dnaSequences = new String[2];
        dnaSequences[0] = "AAGG-AA";
        dnaSequences[1] = "-A--AG-";
        System.out.println(dnaSequences[0]);
        System.out.println(dnaSequences[1]);
        int test = score(dnaSequences);
        System.out.println(test);*/
    }
    
}


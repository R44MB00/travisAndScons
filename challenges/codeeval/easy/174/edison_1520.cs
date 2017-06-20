Builder result = new StringBuilder();
        for (Character theChar : fileLine.toCharArray()) {
            String slang = null;
            if (punctuacion.contains(theChar)) {
                if (Remplace = !Remplace) {
                    //slang = ObtenerSlang();
                    slang = slangs[Indice];
                    if (++Indice == slangs.length) {
                        Indice = 0;
                    }
                }
            }
            result.append(slang == null ? theChar : slang);
        }
        System.out.println(result.toString());
    }
    private static void Cambie(String[] args) throws Throwable {
    BufferedReader reader = new BufferedReader(new FileReader(new File(args[0])));
    String fileLine;
    while ((fileLine = reader.readLine()) != null) {
        if (!fileLine.isEmpty()) {
            slangFlavor(fileLine);
        }
    }
    }
}

# <your_app>/.git_hooks/pre_commit/line_length.rb

module Overcommit::Hook::PreCommit
  class LineLength < Base
    # Overcommit expects you to override this method which will be called
    # everytime your pre-commit hook is run.
    def run
      # Create two arrays to hold our error and warning messages.
      error_lines = []
      warning_lines = []

      # The `config` attribute is a hash of
      # your settings based on your `.overcommit.yml` file.
      max_line_length = config['max']

      # For pre-commit hooks, `applicable_files` is one of the methods that
      # Overcommit provides which returns an array of files that have been
      # modified for the particular commit.
      applicable_files.each do |file|
        # `modified_lines` is another method provided by Overcommit. It will
        # return an array containing the index of lines in the file which have
        # been modified for the particular commit.
        modified_lines_num = modified_lines_in_file(file)

        # Loop through each file with the index.
        File.open(file, 'r').each_with_index do |line, index|
          # Check if the length of line is greater than our desired length.
          if line.length > max_line_length
            message = format("#{file}:#{index + 1}: Line is too long [%d/%d]",
              line.length, max_line_length)

            # If the line is included in our modified lines, we will add it to
            # `error_lines`, else add it to `warning_lines`.
            if modified_lines_num.include?(index + 1)
              error_lines << message
            else
              warning_lines << message
            end
          end
        end
      end

      # Overcommit expects 1 of the 3 as return values, `:fail`, `:warn` or `:pass`.
      # If the hook returns `:fail`, the commit will be aborted with our message
      # containing the errors.
      return :fail, error_lines.join("\n") if error_lines.any?

      # If the hook returns `:warn`, the commit will continue with our message
      # containing the warnings.
      return :warn, "Modified files have lints (on lines you didn't modify)\n" <<
        warning_lines.join("\n") if warning_lines.any?

      :pass
    end
  end
end

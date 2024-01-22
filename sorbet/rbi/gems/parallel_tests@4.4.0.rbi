# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `parallel_tests` gem.
# Please instead update this file by running `bin/tapioca gem parallel_tests`.

# rake tasks for Rails 3+
#
# source://parallel_tests//lib/parallel_tests.rb#6
module ParallelTests
  class << self
    # copied from http://github.com/carlhuda/bundler Bundler::SharedHelpers#find_gemfile
    #
    # @return [Boolean]
    #
    # source://parallel_tests//lib/parallel_tests.rb#50
    def bundler_enabled?; end

    # source://parallel_tests//lib/parallel_tests.rb#95
    def delta; end

    # source://parallel_tests//lib/parallel_tests.rb#16
    def determine_number_of_processes(count); end

    # @return [Boolean]
    #
    # source://parallel_tests//lib/parallel_tests.rb#66
    def first_process?; end

    # @return [Boolean]
    #
    # source://parallel_tests//lib/parallel_tests.rb#70
    def last_process?; end

    # source://parallel_tests//lib/parallel_tests.rb#91
    def now; end

    # source://parallel_tests//lib/parallel_tests.rb#87
    def number_of_running_processes; end

    # source://parallel_tests//lib/parallel_tests.rb#41
    def pid_file_path; end

    # source://parallel_tests//lib/parallel_tests.rb#37
    def pids; end

    # source://parallel_tests//lib/parallel_tests.rb#45
    def stop_all_processes; end

    # source://parallel_tests//lib/parallel_tests.rb#82
    def wait_for_other_processes_to_finish; end

    # source://parallel_tests//lib/parallel_tests.rb#24
    def with_pid_file; end

    # source://parallel_tests//lib/parallel_tests.rb#78
    def with_ruby_binary(command); end
  end
end

# source://parallel_tests//lib/parallel_tests/cli.rb#9
class ParallelTests::CLI
  # source://parallel_tests//lib/parallel_tests/cli.rb#10
  def run(argv); end

  private

  # exit with correct status code so rake parallel:test && echo 123 works
  #
  # @return [Boolean]
  #
  # source://parallel_tests//lib/parallel_tests/cli.rb#177
  def any_test_failed?(test_results); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#347
  def append_test_options(options, argv); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#388
  def detailed_duration(seconds); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#362
  def execute_command_in_parallel(command, num_processes, options); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#56
  def execute_in_parallel(items, num_processes, options); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#336
  def extract_file_paths(argv); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#342
  def extract_test_options(argv); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#395
  def final_fail_message; end

  # @return [Boolean]
  #
  # source://parallel_tests//lib/parallel_tests/cli.rb#405
  def first_is_1?; end

  # source://parallel_tests//lib/parallel_tests/cli.rb#31
  def handle_interrupt; end

  # source://parallel_tests//lib/parallel_tests/cli.rb#355
  def load_runner(type); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#126
  def lock(lockfile); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#181
  def parse_options!(argv); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#166
  def pluralize(n, singular); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#144
  def report_failure_rerun_commmand(test_results, options); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#158
  def report_number_of_tests(groups); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#136
  def report_results(test_results, options); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#383
  def report_time_taken(&block); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#118
  def reprint_output(result, lockfile); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#110
  def run_tests(group, process_number, num_processes, options); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#71
  def run_tests_in_parallel(num_processes, options); end

  # CI systems often fail when there is no output for a long time, so simulate some output
  #
  # source://parallel_tests//lib/parallel_tests/cli.rb#411
  def simulate_output_for_ci(simulate); end

  # @return [Boolean]
  #
  # source://parallel_tests//lib/parallel_tests/cli.rb#401
  def use_colors?; end
end

# source://parallel_tests//lib/parallel_tests/grouper.rb#3
class ParallelTests::Grouper
  class << self
    # source://parallel_tests//lib/parallel_tests/grouper.rb#10
    def by_scenarios(tests, num_groups, options = T.unsafe(nil)); end

    # source://parallel_tests//lib/parallel_tests/grouper.rb#5
    def by_steps(tests, num_groups, options); end

    # source://parallel_tests//lib/parallel_tests/grouper.rb#15
    def in_even_groups_by_size(items, num_groups, options = T.unsafe(nil)); end

    private

    # source://parallel_tests//lib/parallel_tests/grouper.rb#113
    def add_to_group(group, item, size); end

    # source://parallel_tests//lib/parallel_tests/grouper.rb#118
    def group_by_features_with_steps(tests, options); end

    # source://parallel_tests//lib/parallel_tests/grouper.rb#123
    def group_by_scenarios(tests, options = T.unsafe(nil)); end

    # source://parallel_tests//lib/parallel_tests/grouper.rb#128
    def group_features_by_size(items, groups_to_fill); end

    # source://parallel_tests//lib/parallel_tests/grouper.rb#95
    def isolate_count(options); end

    # source://parallel_tests//lib/parallel_tests/grouper.rb#136
    def items_to_group(items); end

    # source://parallel_tests//lib/parallel_tests/grouper.rb#105
    def largest_first(files); end

    # source://parallel_tests//lib/parallel_tests/grouper.rb#109
    def smallest_group(groups); end

    # source://parallel_tests//lib/parallel_tests/grouper.rb#51
    def specify_groups(items, num_groups, options, groups); end
  end
end

# source://parallel_tests//lib/parallel_tests/pids.rb#5
class ParallelTests::Pids
  # @return [Pids] a new instance of Pids
  #
  # source://parallel_tests//lib/parallel_tests/pids.rb#8
  def initialize(file_path); end

  # source://parallel_tests//lib/parallel_tests/pids.rb#13
  def add(pid); end

  # source://parallel_tests//lib/parallel_tests/pids.rb#28
  def all; end

  # source://parallel_tests//lib/parallel_tests/pids.rb#23
  def count; end

  # source://parallel_tests//lib/parallel_tests/pids.rb#18
  def delete(pid); end

  # Returns the value of attribute file_path.
  #
  # source://parallel_tests//lib/parallel_tests/pids.rb#6
  def file_path; end

  # Returns the value of attribute mutex.
  #
  # source://parallel_tests//lib/parallel_tests/pids.rb#6
  def mutex; end

  private

  # source://parallel_tests//lib/parallel_tests/pids.rb#39
  def clear; end

  # source://parallel_tests//lib/parallel_tests/pids.rb#35
  def pids; end

  # source://parallel_tests//lib/parallel_tests/pids.rb#44
  def read; end

  # source://parallel_tests//lib/parallel_tests/pids.rb#52
  def save; end

  # source://parallel_tests//lib/parallel_tests/pids.rb#56
  def sync(&block); end
end

# source://parallel_tests//lib/parallel_tests/rspec/runner.rb#5
module ParallelTests::RSpec; end

# source://parallel_tests//lib/parallel_tests/rspec/runner.rb#6
class ParallelTests::RSpec::Runner < ::ParallelTests::Test::Runner
  class << self
    # remove old seed and add new seed
    # --seed 1234
    # --order rand
    # --order rand:1234
    # --order random:1234
    #
    # source://parallel_tests//lib/parallel_tests/rspec/runner.rb#51
    def command_with_seed(cmd, seed); end

    # source://parallel_tests//lib/parallel_tests/rspec/runner.rb#28
    def default_test_folder; end

    # source://parallel_tests//lib/parallel_tests/rspec/runner.rb#14
    def determine_executable; end

    # @return [Boolean]
    #
    # source://parallel_tests//lib/parallel_tests/rspec/runner.rb#42
    def line_is_result?(line); end

    # source://parallel_tests//lib/parallel_tests/rspec/runner.rb#9
    def run_tests(test_files, process_number, num_processes, options); end

    # source://parallel_tests//lib/parallel_tests/rspec/runner.rb#24
    def runtime_log; end

    # Summarize results from threads and colorize results based on failure and pending counts.
    #
    # source://parallel_tests//lib/parallel_tests/rspec/runner.rb#58
    def summarize_results(results); end

    # source://parallel_tests//lib/parallel_tests/rspec/runner.rb#32
    def test_file_name; end

    # used to find all _spec.rb files
    # supports also feature files used by rspec turnip extension
    #
    # source://parallel_tests//lib/parallel_tests/rspec/runner.rb#38
    def test_suffix; end

    private

    # source://parallel_tests//lib/parallel_tests/rspec/runner.rb#75
    def color; end

    # source://parallel_tests//lib/parallel_tests/rspec/runner.rb#79
    def spec_opts; end
  end
end

# source://parallel_tests//lib/parallel_tests/rspec/runner.rb#7
ParallelTests::RSpec::Runner::DEV_NULL = T.let(T.unsafe(nil), String)

# source://parallel_tests//lib/parallel_tests.rb#8
ParallelTests::RUBY_BINARY = T.let(T.unsafe(nil), String)

# source://parallel_tests//lib/parallel_tests/test/runner.rb#6
module ParallelTests::Test; end

# source://parallel_tests//lib/parallel_tests/test/runner.rb#7
class ParallelTests::Test::Runner
  class << self
    # remove old seed and add new seed
    #
    # source://parallel_tests//lib/parallel_tests/test/runner.rb#152
    def command_with_seed(cmd, seed); end

    # source://parallel_tests//lib/parallel_tests/test/runner.rb#21
    def default_test_folder; end

    # source://parallel_tests//lib/parallel_tests/test/runner.rb#88
    def execute_command(cmd, process_number, num_processes, options); end

    # source://parallel_tests//lib/parallel_tests/test/runner.rb#110
    def execute_command_and_capture_output(env, cmd, options); end

    # source://parallel_tests//lib/parallel_tests/test/runner.rb#129
    def find_results(test_output); end

    # ignores other commands runner noise
    #
    # @return [Boolean]
    #
    # source://parallel_tests//lib/parallel_tests/test/runner.rb#43
    def line_is_result?(line); end

    # source://parallel_tests//lib/parallel_tests/test/runner.rb#105
    def print_command(command, env); end

    # source://parallel_tests//lib/parallel_tests/test/runner.rb#29
    def run_tests(test_files, process_number, num_processes, options); end

    # --- usually overwritten by other runners
    #
    # source://parallel_tests//lib/parallel_tests/test/runner.rb#13
    def runtime_log; end

    # source://parallel_tests//lib/parallel_tests/test/runner.rb#146
    def summarize_results(results); end

    # source://parallel_tests//lib/parallel_tests/test/runner.rb#138
    def test_env_number(process_number, options = T.unsafe(nil)); end

    # source://parallel_tests//lib/parallel_tests/test/runner.rb#25
    def test_file_name; end

    # source://parallel_tests//lib/parallel_tests/test/runner.rb#17
    def test_suffix; end

    # finds all tests and partitions them into groups
    #
    # source://parallel_tests//lib/parallel_tests/test/runner.rb#50
    def tests_in_groups(tests, num_groups, options = T.unsafe(nil)); end

    # source://parallel_tests//lib/parallel_tests/test/runner.rb#55
    def tests_with_size(tests, options); end

    protected

    # read output of the process and print it in chunks
    #
    # source://parallel_tests//lib/parallel_tests/test/runner.rb#180
    def capture_output(out, env, options = T.unsafe(nil)); end

    # source://parallel_tests//lib/parallel_tests/test/runner.rb#167
    def determine_executable; end

    # source://parallel_tests//lib/parallel_tests/test/runner.rb#159
    def executable; end

    # source://parallel_tests//lib/parallel_tests/test/runner.rb#254
    def files_in_folder(folder, options = T.unsafe(nil)); end

    # source://parallel_tests//lib/parallel_tests/test/runner.rb#237
    def find_tests(tests, options = T.unsafe(nil)); end

    # source://parallel_tests//lib/parallel_tests/test/runner.rb#265
    def remove_command_arguments(command, *args); end

    # source://parallel_tests//lib/parallel_tests/test/runner.rb#222
    def runtimes(tests, options); end

    # source://parallel_tests//lib/parallel_tests/test/runner.rb#232
    def sort_by_filesize(tests); end

    # source://parallel_tests//lib/parallel_tests/test/runner.rb#202
    def sort_by_runtime(tests, runtimes, options = T.unsafe(nil)); end

    # source://parallel_tests//lib/parallel_tests/test/runner.rb#171
    def sum_up_results(results); end

    private

    # @return [Boolean]
    #
    # source://parallel_tests//lib/parallel_tests/test/runner.rb#292
    def report_process_command?(options); end

    # fill gaps with unknown-runtime if given, average otherwise
    # NOTE: an optimization could be doing runtime by average runtime per file size, but would need file checks
    #
    # source://parallel_tests//lib/parallel_tests/test/runner.rb#284
    def set_unknown_runtime(tests, options); end
  end
end

# source://parallel_tests//lib/parallel_tests/test/runner.rb#8
class ParallelTests::Test::Runner::RuntimeLogTooSmallError < ::StandardError; end

# source://parallel_tests//lib/parallel_tests/version.rb#3
ParallelTests::VERSION = T.let(T.unsafe(nil), String)

# source://parallel_tests//lib/parallel_tests.rb#7
ParallelTests::WINDOWS = T.let(T.unsafe(nil), T.untyped)

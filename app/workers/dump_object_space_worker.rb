class DumpObjectSpaceWorker
  include Sidekiq::Worker

  # performs the export
  def perform(filename)
    GC.start
    GC.start
    GC.start

    File.open(filename, 'w') do |fileio|
      ObjectSpace.dump_all(output: fileio, full: true)
    end
  end
end

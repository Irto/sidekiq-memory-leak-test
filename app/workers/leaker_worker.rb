class LeakerWorker
  class WorkerCustomError < ::StandardError; end

  include ::Sidekiq::Worker

  sidekiq_options retry: 50, unique_for: 2.minutes

  def perform(user_id)
    # user = User.find(user_id)

    "nice #{user_id}"

    raise WorkerCustomError, "Raised an error! Are you seeing any leak?"
  end
end

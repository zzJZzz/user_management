class FetchUsersWorker
  include Sidekiq::Worker

  PER_PAGE = 25

  def perform(page)
    records, total_records = ApiFetcher.fetch_users_data(page, PER_PAGE)
    ApiFetcher.save_users_to_database(records)

    return unless has_more_records?(page, total_records, PER_PAGE)

    FetchUsersWorker.perform_async(page + 1)
  end

  def has_more_records?(page, total_records, per_page)
    page * per_page < total_records
  end
end

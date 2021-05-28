class RestaurantNotifierJob < ApplicationJob
  queue_as :default

  def perform(customer_id)
    user = User.find(customer_id)
    puts 'Hello from sidekiq (Worker)'
    puts "O pedido foi criado por #{user.email}"
  end
end

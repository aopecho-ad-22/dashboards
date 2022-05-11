class CurrencyController < ActionController::Base
  def first_currency

    @raw_currency_data = open("https://api.exchangerate.host/symbols").read
    @parsed_currency_data = JSON.parse(@raw_currency_data)
    @currencies_hash = @parsed_currency_data.fetch("symbols")
    @array_of_currencies = @currencies_hash.keys


    render ({ :template => "currency_templates/first_currency.html.erb" })
  end

  def second_currency

    @raw_currency_data = open("https://api.exchangerate.host/symbols").read
    @parsed_currency_data = JSON.parse(@raw_currency_data)
    @currencies_hash = @parsed_currency_data.fetch("symbols")
    @array_of_currencies = @currencies_hash.keys

    @first_currency = params.fetch("first_currency")

    render ({ :template => "currency_templates/second_currency.html.erb" })
  end
end

$LOAD_PATH.unshift File.expand_path "../lib", File.dirname(__FILE__)
require 'grape'
require 'json'
require 'date'
require 'holiday_japan'

class API < Grape::API
  format :json

  resource "holiday" do
    get do
      {
        holiday: HolidayJapan.check(Date.today),
        wday: Date.today.wday
      }
    end

    params do
      requires :year, type: Integer
      requires :month, type: Integer
      requires :day, type: Integer
    end

    post do
      {
        holiday: HolidayJapan.check(Date.new(params[:year],params[:month],params[:day])),
        wday: Date.new(params[:year],params[:month],params[:day]).wday
      }
    end
  end

end

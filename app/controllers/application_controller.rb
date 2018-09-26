class ApplicationController < ActionController::API
  def params_missing?(params_array, keys_array)
    @error_hash = {}
    keys_array.each do |key|
      unless params_array[key].present?
        @error_hash[:message] = (@error_hash.has_key?(:message)) ? @error_hash[:message] + " #{key.to_s} parameter is missing." : "#{key.to_s} parameter is missing."
      end
    end

    @error_hash.merge!(error: "Bad Request") if @error_hash.has_key?(:message)
    @error_hash.has_key?(:message)
  end
end

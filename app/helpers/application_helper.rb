module ApplicationHelper
  def currency_symbol(code)
    symbols = {
      'USD' => '$',
      'EUR' => '€'
      # Add more currency code and symbol mappings as needed
    }
    
    symbols[code] || code
  end
end

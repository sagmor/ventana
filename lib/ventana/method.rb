require 'ventana/i18n'

module Ventana
  extend self

  def date_format(from,to)
    format = if to.year > from.year
      # must show year difference
      "full_dates"
    elsif to.month > from.month
      # must show month difference
      "single_year"
    elsif to.day > from.day
      # within the same month
      "single_month"
    else
      # within the same day
      "single_day"
    end

    if Ventana.show_days?(from,to)
      format << "_with_days"
    else
      format << "_without_days"
    end unless format == "single_day"

    format
  end

  def time_format(from,to)
    
  end

  def show_days?(from,to)
    from.day != 1 || to.day != case to.month
                                when 1,3,5,7,8,10,12 then 31
                                when 4,6,9,11 then 30
                                else
                                  if (to.year % 4) == 0
                                    29
                                  else
                                    28
                                  end
                                end
  end
end

def Ventana(from,to,options={})
  raise ArgumentError, "#{from} is bigger than #{to}" if from > to 

  I18n.t(Ventana.date_format(from,to), {
    from_year: from.year,
    from_month: I18n.t('ventana.month_names')[from.month],
    from_day: from.day,
    to_year: to.year,
    to_month: I18n.t('ventana.month_names')[to.month],
    to_day: to.day,
    scope: :ventana
  })
end

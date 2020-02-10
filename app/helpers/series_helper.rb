module SeriesHelper

  def status(s)
    case s
    when 'Ended'
      'Finalizada'
    when 'Returning Series'
      'Renovada'
    when 'Canceled'
      'Cancelada'
    end
  end

  def verify(o)
    if o.nil?
      'Não disponível'
    else
      o
    end
  end

  def date_formatter(date, type)
    d = Date.parse(date)
    case type
    when 'year'
      d.strftime("%Y")
    when 'm/y'
      d.strftime("%b/%Y")
    end
  end

  def link(path, type)
    case type
    when 'bp'
      link = "https://image.tmdb.org/t/p/w1400_and_h450_face#{path}"
    when 'pp'
      link = "https://image.tmdb.org/t/p/w600_and_h900_bestv2#{path}"
    when 'cp'
      link = "https://image.tmdb.org/t/p/w138_and_h175_face#{path}"
    when 'original'
      link = "https://image.tmdb.org/t/p/original/#{path}"
    end

  end
end

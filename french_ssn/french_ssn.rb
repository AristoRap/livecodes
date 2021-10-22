require 'date'
require 'yaml'
SSN_PATTERN = /^(?<sex>[12])\s?(?<year>\d{2})\s?(?<month>0[1-9]|1[0-2])\s?(?<zip>\d{2}|2[AB])\s?(\d{3})\s?(\d{3})\s?(?<key>\d{2})$/

def french_ssn_info(ssn)
  match_data = ssn.match(SSN_PATTERN)
  if match_data
    gender = gender(match_data[:sex])
    year = "19#{match_data[:year]}"
    date = Date::MONTHNAMES[match_data[:month].to_i]
    departement = YAML.load_file('data/french_departments.yml')
    departement = departement[match_data[:zip]]
    p departement
  else
    puts "invalid number"
  end
  p match_data
  return "The number is invalid"
end

def gender(code)
  return code == "1" ? 'man' : 'woman'
end

french_ssn_info("1 84 12 76 451 089 46")

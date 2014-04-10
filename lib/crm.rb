class CRM
  attr_reader :data
  def initialize(data)
    @data = data
  end

  def company_roster
    company_array = []
    data[:companies].each do |company|
      company_hash = {name: company[:name], employees: []}
      data[:people].each do |person|
        person[:employments].each do |job|
          if job[:company_id] == company[:id]
            company_hash[:employees] << {
              :id => person[:id],
              :first_name => person[:first_name],
              :last_name => person[:last_name],
              :title => job[:title]
            }
          end
        end
      end
      company_array << company_hash
    end
    company_array
  end
end
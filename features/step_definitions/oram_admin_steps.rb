Given /the following referrers exist/ do |referrers_rable|
  referrers_table.hashes.each do |referrer|
    Referrers.create!(referrer)
  end
end

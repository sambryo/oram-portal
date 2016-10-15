Given /the following referrers exist/ do |referrers_table|
  referrers_table.hashes.each do |referrer|
    Referrers.create!(referrer)
  end
end

Given /I am an ORAM Administrator/ do
  pending
end

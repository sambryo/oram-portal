When /I upload the file "(.*)"/ do |file_name|
  attach_file('case_document', File.absolute_path("./features/fileset/#{file_name}"))
end

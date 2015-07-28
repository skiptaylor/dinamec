# Clear out all the current data
DataMapper.repository(:default).adapter.execute("delete from parts")

CSV.open('./data/parts/m4.csv', { headers: true }) do |csv_lines|
  csv_lines.each do |line|
    Part.create(
      machine_id:     '1',
      description:    line['Description'],
      suggested_qty:  line['Qty'].to_i,
      part_number:    line['KSI Part #'],
      part:           line['F/S']
    )
  end
end

staff_members = StaffMember.all

256.times do |n|
  m = staff_members.sample
  e = m.events.build
  e.type = 'rejected'
  if m.active?
    e.type = n.even? ? 'logged_in' : 'logged_out'
  end
  e.occurred_at = (256 - n).hours.ago
  e.save!
end

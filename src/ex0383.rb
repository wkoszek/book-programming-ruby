# Sample code from Programing Ruby, page 191
# Extract the age and calculate the
# date of birth.
#--
# FIXME: fails if the birthday falls on
# February 29th, or if the person
# was born before epoch and the installed
# Ruby doesn't support negative time_t
#++
# The DOB is returned as a Time object.
#-- 
# But should probably change to use Date.

def get_dob(person)
           ...
end

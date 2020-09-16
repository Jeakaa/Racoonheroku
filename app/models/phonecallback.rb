class Phonecallback < ApplicationRecord

 validates :name, :presence => true

 validates :phonenumber, :presence => true


 UNPERFORMED = 0
 PERFORMED = 1
 NEED_RECALL= 2
 CLOSED = 3

 STATES = [
     ["Новая", UNPERFORMED],
     ["Выполнена", PERFORMED],
     ["Нужно перезвонить", NEED_RECALL],
     ["Закрыта", CLOSED]
 ]

 def phonecallback_state
  result = 'not set!!!'
  if state.blank? or (!state.is_a?(Integer) and !state.is_a?(Fixnum))
   return result
  end


  STATES.each do |i|
   if i[1] == state
    return i[0]
   end
  end

  return result
 end


end

people = [
  { name: "George Michael Bluth", age: 18, eye_color: "brown", hometown: "Newport Beach" },
  { name: "Lindsay Bluth Funke",  age: 36, eye_color: "blue",  hometown: "Newport Beach" },
  { name: "Lucille Bluth",        age: 65, eye_color: "brown", hometown: "Newport Beach" },
  { name: "Maeby Funke",          age: 17, eye_color: "green", hometown: "Boston" },
  { name: "GOB Bluth",            age: 38, eye_color: "brown", hometown: "Newport Beach" },
  { name: "Tobias Funke",         age: 43, eye_color: "brown", hometown: "Boston" }
]

people_statistics = {
  ages: {twenty_or_younger: 0, over_twenty: 0},
  eye_color: {blue: 0, green: 0, brown: 0},
  hometown: {"Newport Beach" => 0, "Boston" => 0}
}

people.each do |person|
  if person[:age] < 20
    people_statistics[:ages][:twenty_or_younger] +=1
  else
    people_statistics[:ages][:over_twenty] += 1
  end
  if person[:eye_color] == "blue"
    people_statistics[:eye_color][:blue] += 1
  elsif person[:eye_color] == "brown"
    people_statistics[:eye_color][:brown] += 1
  elsif person[:eye_color] == "green"
    people_statistics[:eye_color][:green]+= 1
  end
  if person[:hometown] == "Newport Beach"
    people_statistics[:hometown]["Newport Beach"]+= 1
  elsif person[:hometown] == "Boston"
    people_statistics[:hometown]["Boston"] += 1
  end
end

puts people_statistics.inspect

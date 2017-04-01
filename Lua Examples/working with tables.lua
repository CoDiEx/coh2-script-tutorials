function CreatePizza(_salami, _sausage, _salad, _cheese, _tomatoes, _garlic)
  return {salami = _salami, sausage = _sausage, salad = _salad, cheese = _cheese, tomatoes = _tomatoes, garlic = _garlic}; -- Create a table and return it
end

function PrintMenu(name, pizza_place)
  print(name ..":");
  for k,v in pairs(pizza_place) do
    print(" " ..k ..":");
    print("   Salami:" ..tostring(v.salami));
    print("   Sausage:" ..tostring(v.sausage));
    print("   Salad:" ..tostring(v.salad));
    print("   Cheese:" ..tostring(v.cheese));
    print("   Tomatoes:" ..tostring(v.tomatoes));
    print("   Garlic:" ..tostring(v.garlic));
  end
  print("");
end

function exampleA()

  t_pizza_places = {}; -- Declare a table
  t_pizza_places["Good Pizza's"] = { -- Declare a table inside t_pizza_places called "Good Pizza's"
    ["Meat lover"] = CreatePizza(true, true, false, false, false, false), -- Create a pizza with salami and sausage
    ["Meat'n cheese"] = CreatePizza(true, true, false, true, false, false), -- Create a pizza with salami, sausage, and cheese
    ["Regulari"] = CreatePizza(true, false, false, true, false, false), -- Create a pizza with salami and cheese
  }
  t_pizza_places["The Real Italian"] = { -- Declare a table inside t_pizza_places called "Good Pizza's"
    ["Italian Meat"] = CreatePizza(true, true, false, true, false, false), -- Create a pizza with salami and sausage and cheese
    ["The Vegan Pizza"] = CreatePizza(false, false, true, false, true, false), -- Create a pizza with salad and tomatoes
    ["The All in one"] = CreatePizza(true, true, true, true, true, true), -- Create a pizza with everything
    ["Vampire safe"] = CreatePizza(true, false, true, true, false, true), -- Create a pizza with salami, salad, cheese and garlic
  }

  for k,v in pairs(t_pizza_places) do -- Loop through all pizza places we have declared
    PrintMenu(k, v); -- Call the PrintMenu function with our pizza place as the argument
  end

end

exampleA();

# Sample code from Programing Ruby, page 16
num_pallets = 101
weight = 1
  while weight < 100 and num_pallets <= 30
    pallet = next_pallet()
    weight += pallet.weight
    num_pallets += 1
  end

# Sample code from Programing Ruby, page 93
    year = 1937
  kind = case year
         when 1850..1889: "Blues"
         when 1890..1909: "Ragtime"
         when 1910..1929: "New Orleans Jazz"
         when 1930..1939: "Swing"
         when 1940..1950: "Bebop"
         else             "Jazz"
         end

def slugifier(string)
	# replace accents
    accents = {
      ['Ã¡','Ã ','Ã¢','Ã¤','Ã£', 'á'] => 'a',
      ['Ãƒ','Ã„','Ã‚','Ã€','Ã'] => 'A',
      ['Ã©','Ã¨','Ãª','Ã«', 'é'] => 'e',
      ['Ã‹','Ã‰','Ãˆ','ÃŠ'] => 'E',
      ['Ã­','Ã¬','Ã®','Ã¯','í'] => 'i',
      ['Ã','ÃŽ','ÃŒ','Ã'] => 'I',
      ['Ã³','Ã²','Ã´','Ã¶','Ãµ', 'ó'] => 'o',
      ['Ã•','Ã–','Ã”','Ã’','Ã“'] => 'O',
      ['Ãº','Ã¹','Ã»','Ã¼', 'ú'] => 'u',
      ['Ãš','Ã›','Ã™','Ãœ'] => 'U',
      ['Ã§'] => 'c', ['Ã‡'] => 'C',
      ['Ã±', 'ñ'] => 'n', ['Ã‘', 'Ñ'] => 'N'
      }
    accents.each do |ac,rep|
      ac.each do |s|
      string = string.gsub(s, rep)
      end
    end
    string = string.gsub(/[^a-zA-Z0-9 ]/,"") # remove invalid characters

    string = string.gsub(/[ ]+/," ") # collapse whitespace


    string = string.gsub(/ /,"-") # replace spaces for - 

    string = string.downcase # to lower case
    puts string
end
slugifier("Hola que más, cómo estás?")
#slugifier("'áéíóú 123")
#slugifier("A mi       me gusta     Make It Real!!!!")
#!/usr/bin/env python3

def print_define(define_name, define_value, define_comment = ""):
  if define_comment:
    define_comment = " // " + define_comment
  print("#define " + define_name + " " + define_value + define_comment)

def decode_hex(hex_code):
  return tuple(int(hex_code.lstrip('#')[i:i+2], 16) for i in (0, 2 ,4))

def rgb_tuple_to_string(rgb_tuple):
  return str(rgb_tuple[0]) + " " + str(rgb_tuple[1]) + " " + str(rgb_tuple[2])

def print_lines(lines_to_print):
  for _ in range(lines_to_print):
    print()



def main():
  import configparser
  config = configparser.ConfigParser()

  config.read('AdventureTime.theme')
  scheme = config['Scheme']

  print_define("COL_DEF", rgb_tuple_to_string(decode_hex(scheme["colorforeground"])) + " 255", "Foreground color")
  print()

  for index, ansi_color in enumerate(scheme["colorpalette"].split(";")):
    if index == 8:
      print()
    elif index == 1:
      ansi1_string = rgb_tuple_to_string(decode_hex(ansi_color))

    print_define("ANSI" + str(index), rgb_tuple_to_string(decode_hex(ansi_color)) + " 255")

  print()
  print_define("BG_COLOR", rgb_tuple_to_string(decode_hex(scheme["colorbackground"])) + " 255")
  print_lines(4)

  print_define("BELL", "ANSI1", "Color of the bell")
  print()

  print_define("BELL_OVERLAY_COLOR", ansi1_string + " 100", "Color flash when bell rings")
  print()

  print_define("CURSOR", rgb_tuple_to_string(decode_hex(scheme["colorcursor"])), "Cursor color")
  print()

  print_define("LINK", "ANSI4", "Color of the link underline")
  print()

  print_define("MEDIA_BG", "BG_COLOR", "Background color of the popmedia")
  print_lines(4)
  
  print("#include \"../base.edc\"")



if __name__ == '__main__': main()
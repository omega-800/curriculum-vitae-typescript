import re, getopt, sys, shutil
from googletrans import Translator
import json
import codecs

"""
python script which translates a given file (eg messages_de.properties) into a copy of that file (eg messages_en.properties)
for each line of the given file it matches the regex (everything after = and before \n), translates it and writes to newly createds file
args: -f (file) -i (input language) -o (output language) -a (write all changes without asking)
if without -a: asks every time to either accept change, skip or manually edit translation

python3 translate.py -f dialogs_de.properties -i de -o fr -a 
creates file dialogs_fr.properties and writes all changes without confirmation
"""

# console output colors
BLUE = '\033[94m'
CYAN = '\033[96m'
GREEN = '\033[92m'
ENDC = '\033[0m'

# regex pattern for finding entries to translate
regex = re.compile('= .+\n')

# google translator
translator = Translator()

# default variables
file='translation_de.json'
origin_lang='de'
dest_lang='fr'
translate_all=True

# method for translating file
def translate(file, origin_lang, dest_lang):
    # create a copy of the file, renamed to destination language (messages_de.properties > messages_en.properties)
    translated_file = file.replace(origin_lang+".", dest_lang+".")
    shutil.copy(file, translated_file)
    filedata=open(file)
    data = json.load(filedata)
    newdata = json.loads("{}")

    # assign contents of file as a string to variable
    #with open(file, encoding="windows-1252") as f:
        #filedata = f.read()

    #with open(file, encoding="windows-1252") as f:
        # for each line get matching string
    for line in data:
        #result = regex.search(line)
        text = data[line]
        print(text)
        translated = translator.translate(text,src=origin_lang,dest=dest_lang).text.capitalize()
        
        # output translation
        print(BLUE+"ORIGINAL:      "+text+ENDC)
        print(GREEN+"TRANSLATED:    "+translated+ENDC)

        # if -a was given as args then skip confirmation
        #if translate_all:
            # replace matched string inside the text with translated string
        #filedata = filedata.replace(text,translated)
        newdata.update({line : translated})
        """else:
            # get input if it should be translated, skipped, or manually edited
            option = input("t=translate s=skip e=edit > ")
            if option == 't':
                # replace matched string inside the text with translated string
                filedata = filedata.replace(text,translated)
            elif option == 's':
                print("skipped")
            elif option =='e':
                # replace matched string inside the text with string given through cli
                translated = input("your translation > ")+"\n"
                filedata = filedata.replace(text,translated)
        """
        # write changes to new file
    print(json.dumps(newdata, indent=2, ensure_ascii=False))
    with codecs.open(translated_file, 'w', encoding="utf-8") as f:    
        f.write(json.dumps(newdata, indent=2, ensure_ascii=False))

# get args from command line 
# available are: 
# -f (file)
# -i (input language)
# -o (output language)
# -a (write all changes without asking)
# eg -f messages_de.properties -i de -o en
"""
opts, args = getopt.getopt(sys.argv[1:],"f:i:o:a")
for opt, arg in opts:
    if opt == '-f':
        file = arg
    elif opt == '-i':
        origin_lang = arg
    elif opt == '-o':
        dest_lang = arg
    elif opt == '-a':
        translate_all=True
"""
translate(file, origin_lang, dest_lang)
               

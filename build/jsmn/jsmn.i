# 1 "C:/esp/esp-idf/components/jsmn/src/jsmn.c"
# 1 "C:\\esp\\esp32-ArkPOS2\\ArkPOS2-esp\\build\\jsmn//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/esp/esp-idf/components/jsmn/src/jsmn.c"
# 31 "C:/esp/esp-idf/components/jsmn/src/jsmn.c"
# 1 "C:/esp/esp-idf/components/jsmn/include/jsmn.h" 1
# 34 "C:/esp/esp-idf/components/jsmn/include/jsmn.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 35 "C:/esp/esp-idf/components/jsmn/include/jsmn.h" 2
# 47 "C:/esp/esp-idf/components/jsmn/include/jsmn.h"

# 47 "C:/esp/esp-idf/components/jsmn/include/jsmn.h"
typedef enum {
 JSMN_UNDEFINED = 0,
 JSMN_OBJECT = 1,
 JSMN_ARRAY = 2,
 JSMN_STRING = 3,
 JSMN_PRIMITIVE = 4
} jsmntype_t;

enum jsmnerr {

 JSMN_ERROR_NOMEM = -1,

 JSMN_ERROR_INVAL = -2,

 JSMN_ERROR_PART = -3
};







typedef struct {
 jsmntype_t type;
 int start;
 int end;
 int size;



} jsmntok_t;





typedef struct {
 unsigned int pos;
 unsigned int toknext;
 int toksuper;
} jsmn_parser;




void jsmn_init(jsmn_parser *parser);





int jsmn_parse(jsmn_parser *parser, const char *js, size_t len,
  jsmntok_t *tokens, unsigned int num_tokens);
# 32 "C:/esp/esp-idf/components/jsmn/src/jsmn.c" 2




static jsmntok_t *jsmn_alloc_token(jsmn_parser *parser,
  jsmntok_t *tokens, size_t num_tokens) {
 jsmntok_t *tok;
 if (parser->toknext >= num_tokens) {
  return 
# 40 "C:/esp/esp-idf/components/jsmn/src/jsmn.c" 3 4
        ((void *)0)
# 40 "C:/esp/esp-idf/components/jsmn/src/jsmn.c"
            ;
 }
 tok = &tokens[parser->toknext++];
 tok->start = tok->end = -1;
 tok->size = 0;



 return tok;
}




static void jsmn_fill_token(jsmntok_t *token, jsmntype_t type,
                            int start, int end) {
 token->type = type;
 token->start = start;
 token->end = end;
 token->size = 0;
}




static int jsmn_parse_primitive(jsmn_parser *parser, const char *js,
  size_t len, jsmntok_t *tokens, size_t num_tokens) {
 jsmntok_t *token;
 int start;

 start = parser->pos;

 for (; parser->pos < len && js[parser->pos] != '\0'; parser->pos++) {
  switch (js[parser->pos]) {


   case ':':

   case '\t' : case '\r' : case '\n' : case ' ' :
   case ',' : case ']' : case '}' :
    goto found;
  }
  if (js[parser->pos] < 32 || js[parser->pos] >= 127) {
   parser->pos = start;
   return JSMN_ERROR_INVAL;
  }
 }






found:
 if (tokens == 
# 94 "C:/esp/esp-idf/components/jsmn/src/jsmn.c" 3 4
              ((void *)0)
# 94 "C:/esp/esp-idf/components/jsmn/src/jsmn.c"
                  ) {
  parser->pos--;
  return 0;
 }
 token = jsmn_alloc_token(parser, tokens, num_tokens);
 if (token == 
# 99 "C:/esp/esp-idf/components/jsmn/src/jsmn.c" 3 4
             ((void *)0)
# 99 "C:/esp/esp-idf/components/jsmn/src/jsmn.c"
                 ) {
  parser->pos = start;
  return JSMN_ERROR_NOMEM;
 }
 jsmn_fill_token(token, JSMN_PRIMITIVE, start, parser->pos);



 parser->pos--;
 return 0;
}




static int jsmn_parse_string(jsmn_parser *parser, const char *js,
  size_t len, jsmntok_t *tokens, size_t num_tokens) {
 jsmntok_t *token;

 int start = parser->pos;

 parser->pos++;


 for (; parser->pos < len && js[parser->pos] != '\0'; parser->pos++) {
  char c = js[parser->pos];


  if (c == '\"') {
   if (tokens == 
# 128 "C:/esp/esp-idf/components/jsmn/src/jsmn.c" 3 4
                ((void *)0)
# 128 "C:/esp/esp-idf/components/jsmn/src/jsmn.c"
                    ) {
    return 0;
   }
   token = jsmn_alloc_token(parser, tokens, num_tokens);
   if (token == 
# 132 "C:/esp/esp-idf/components/jsmn/src/jsmn.c" 3 4
               ((void *)0)
# 132 "C:/esp/esp-idf/components/jsmn/src/jsmn.c"
                   ) {
    parser->pos = start;
    return JSMN_ERROR_NOMEM;
   }
   jsmn_fill_token(token, JSMN_STRING, start+1, parser->pos);



   return 0;
  }


  if (c == '\\' && parser->pos + 1 < len) {
   int i;
   parser->pos++;
   switch (js[parser->pos]) {

    case '\"': case '/' : case '\\' : case 'b' :
    case 'f' : case 'r' : case 'n' : case 't' :
     break;

    case 'u':
     parser->pos++;
     for(i = 0; i < 4 && parser->pos < len && js[parser->pos] != '\0'; i++) {

      if(!((js[parser->pos] >= 48 && js[parser->pos] <= 57) ||
         (js[parser->pos] >= 65 && js[parser->pos] <= 70) ||
         (js[parser->pos] >= 97 && js[parser->pos] <= 102))) {
       parser->pos = start;
       return JSMN_ERROR_INVAL;
      }
      parser->pos++;
     }
     parser->pos--;
     break;

    default:
     parser->pos = start;
     return JSMN_ERROR_INVAL;
   }
  }
 }
 parser->pos = start;
 return JSMN_ERROR_PART;
}




int jsmn_parse(jsmn_parser *parser, const char *js, size_t len,
  jsmntok_t *tokens, unsigned int num_tokens) {
 int r;
 int i;
 jsmntok_t *token;
 int count = parser->toknext;

 for (; parser->pos < len && js[parser->pos] != '\0'; parser->pos++) {
  char c;
  jsmntype_t type;

  c = js[parser->pos];
  switch (c) {
   case '{': case '[':
    count++;
    if (tokens == 
# 196 "C:/esp/esp-idf/components/jsmn/src/jsmn.c" 3 4
                 ((void *)0)
# 196 "C:/esp/esp-idf/components/jsmn/src/jsmn.c"
                     ) {
     break;
    }
    token = jsmn_alloc_token(parser, tokens, num_tokens);
    if (token == 
# 200 "C:/esp/esp-idf/components/jsmn/src/jsmn.c" 3 4
                ((void *)0)
# 200 "C:/esp/esp-idf/components/jsmn/src/jsmn.c"
                    )
     return JSMN_ERROR_NOMEM;
    if (parser->toksuper != -1) {
     tokens[parser->toksuper].size++;



    }
    token->type = (c == '{' ? JSMN_OBJECT : JSMN_ARRAY);
    token->start = parser->pos;
    parser->toksuper = parser->toknext - 1;
    break;
   case '}': case ']':
    if (tokens == 
# 213 "C:/esp/esp-idf/components/jsmn/src/jsmn.c" 3 4
                 ((void *)0)
# 213 "C:/esp/esp-idf/components/jsmn/src/jsmn.c"
                     )
     break;
    type = (c == '}' ? JSMN_OBJECT : JSMN_ARRAY);
# 236 "C:/esp/esp-idf/components/jsmn/src/jsmn.c"
    for (i = parser->toknext - 1; i >= 0; i--) {
     token = &tokens[i];
     if (token->start != -1 && token->end == -1) {
      if (token->type != type) {
       return JSMN_ERROR_INVAL;
      }
      parser->toksuper = -1;
      token->end = parser->pos + 1;
      break;
     }
    }

    if (i == -1) return JSMN_ERROR_INVAL;
    for (; i >= 0; i--) {
     token = &tokens[i];
     if (token->start != -1 && token->end == -1) {
      parser->toksuper = i;
      break;
     }
    }

    break;
   case '\"':
    r = jsmn_parse_string(parser, js, len, tokens, num_tokens);
    if (r < 0) return r;
    count++;
    if (parser->toksuper != -1 && tokens != 
# 262 "C:/esp/esp-idf/components/jsmn/src/jsmn.c" 3 4
                                           ((void *)0)
# 262 "C:/esp/esp-idf/components/jsmn/src/jsmn.c"
                                               )
     tokens[parser->toksuper].size++;
    break;
   case '\t' : case '\r' : case '\n' : case ' ':
    break;
   case ':':
    parser->toksuper = parser->toknext - 1;
    break;
   case ',':
    if (tokens != 
# 271 "C:/esp/esp-idf/components/jsmn/src/jsmn.c" 3 4
                 ((void *)0) 
# 271 "C:/esp/esp-idf/components/jsmn/src/jsmn.c"
                      && parser->toksuper != -1 &&
      tokens[parser->toksuper].type != JSMN_ARRAY &&
      tokens[parser->toksuper].type != JSMN_OBJECT) {



     for (i = parser->toknext - 1; i >= 0; i--) {
      if (tokens[i].type == JSMN_ARRAY || tokens[i].type == JSMN_OBJECT) {
       if (tokens[i].start != -1 && tokens[i].end == -1) {
        parser->toksuper = i;
        break;
       }
      }
     }

    }
    break;
# 303 "C:/esp/esp-idf/components/jsmn/src/jsmn.c"
   default:

    r = jsmn_parse_primitive(parser, js, len, tokens, num_tokens);
    if (r < 0) return r;
    count++;
    if (parser->toksuper != -1 && tokens != 
# 308 "C:/esp/esp-idf/components/jsmn/src/jsmn.c" 3 4
                                           ((void *)0)
# 308 "C:/esp/esp-idf/components/jsmn/src/jsmn.c"
                                               )
     tokens[parser->toksuper].size++;
    break;






  }
 }

 if (tokens != 
# 320 "C:/esp/esp-idf/components/jsmn/src/jsmn.c" 3 4
              ((void *)0)
# 320 "C:/esp/esp-idf/components/jsmn/src/jsmn.c"
                  ) {
  for (i = parser->toknext - 1; i >= 0; i--) {

   if (tokens[i].start != -1 && tokens[i].end == -1) {
    return JSMN_ERROR_PART;
   }
  }
 }

 return count;
}





void jsmn_init(jsmn_parser *parser) {
 parser->pos = 0;
 parser->toknext = 0;
 parser->toksuper = -1;
}

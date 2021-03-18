package myPackage;
import static myPackage.Tokens.*;

%% 
%class Lexer
%type Tokens

%{ /*section1 */
    public String lexeme;
%}

/*section 2 */
L = [a-zA-Z_]+
D = [0-9]+
LineTerminator = [ ,\t,\r,\n]+

// Tags

BIG_OPEN_TAG = <BIG
BIG_CLOSE_TAG = <\/BIG>

BLOCKQUOTE_OPEN_TAG = <BLOCKQUOTE
BLOCKQUOTE_CLOSE_TAG = <\/BLOCKQUOTE>

BDO_OPEN_TAG = <BDO
BDO_CLOSE_TAG = <\/BDO>

BASEFONT_OPEN_TAG = <BASEFONT
BASEFONT_CLOSE_TAG = <\/BASEFONT>

BODY_OPEN_TAG = <(B|b)(O|o)(D|d)(Y|y)
BODY_CLOSE_TAG = <\/(B|b)(O|o)(D|d)(Y|y)>

HR_OPEN_TAG = <(H|h)(R|r)
HR_CLOSE_TAG = <\/(H|h)(R|r)>

A_OPEN_TAG = <(A|a)
A_CLOSE_TAG = <\/(A|a)>

ABBR_OPEN_TAG = <(A|a)(B|b)(B|b)(R|r)
ABBR_CLOSE_TAG = <\/(A|a)(B|b)(B|b)(R|r)>

ACRONYM_OPEN_TAG = <(A|a)(C|c)(R|r)(O|o)(N|n)(Y|y)(M|m)
ACRONYM_CLOSE_TAG = <\/(A|a)(C|c)(R|r)(O|o)(N|n)(Y|y)(M|m)>

ADDRESS_OPEN_TAG = <(A|a)(D|d)(D|d)(R|r)(E|e)(S|s)(S|s)
ADDRESS_CLOSE_TAG = <\/(A|a)(D|d)(D|d)(R|r)(E|e)(S|s)(S|s)>

AREA_OPEN_TAG = <(A|a)(R|r)(E|e)(A|a)
AREA_CLOSE_TAG = <\/(A|a)(R|r)(E|e)(A|a)>

B_OPEN_TAG = <(B|b)
B_CLOSE_TAG = <\/(B|b)>

BR_OPEN_TAG = <(B|b)(R|r)
BR_CLOSE_TAG = <\/(B|b)(R|r)>

DIV_OPEN_TAG = <(D|D)(I|I)(V|v)
DIV_CLOSE_TAG = <\/(D|D)(I|I)(V|v)>

BASE_OPEN_TAG = <(B|b)(A|a)(S|s)(E|e)
BASE_CLOSE_TAG = <\/(B|b)(A|a)(S|s)(E|e)>

BUTTON_OPEN_TAG = <(B|b)(U|u)(T|t)(T|t)(O|o)(N|n)
BUTTON_CLOSE_TAG = <\/(B|b)(U|u)(T|t)(T|t)(O|o)(N|n)>

CAPTION_OPEN_TAG = <(C|c)(A|a)(P|p)(T|t)(I|i)(O|o)(N|n)
CAPTION_CLOSE_TAG = <\/(C|c)(A|a)(P|p)(T|t)(I|i)(O|o)(N|n)>

CENTER_OPEN_TAG = <CENTER
CENTER_CLOSE_TAG = <\/CENTER>

CITE_OPEN_TAG = <CITE
CITE_CLOSE_TAG = <\/CITE>

CODE_OPEN_TAG = <CODE
CODE_CLOSE_TAG = <\/CODE>

COL_OPEN_TAG = <COL
COL_CLOSE_TAG = <\/COL>

COLGROUP_OPEN_TAG = <COLGROUP
COLGROUP_CLOSE_TAG = <\/COLGROUP>

DD_OPEN_TAG = <DD
DD_CLOSE_TAG = <\/DD>

DEL_OPEN_TAG = <DEL
DEL_CLOSE_TAG = <\/DEL>

DFN_OPEN_TAG = <DFN
DFN_CLOSE_TAG = <\/DFN>
//
DIR_OPEN_TAG = <DIR
DIR_CLOSE_TAG = <\/DIR>

DL_OPEN_TAG = <DL
DL_CLOSE_TAG = <\/DL>

DT_OPEN_TAG = <DT
DT_CLOSE_TAG = <\/DT>

EM_OPEN_TAG = <EM
EM_CLOSE_TAG = <\/EM>

FIELDSET_OPEN_TAG = <FIELDSET
FIELDSET_CLOSE_TAG = <\/FIELDSET>

FONT_OPEN_TAG = <FONT
FONT_CLOSE_TAG = <\/FONT>

FORM_OPEN_TAG = <FORM
FORM_CLOSE_TAG = <\/FORM>

FRAME_OPEN_TAG = <FRAME
FRAME_CLOSE_TAG = <\/FRAME>

FRAMESET_OPEN_TAG = <FRAMESET
FRAMESET_CLOSE_TAG = <\/FRAMESET>

HEAD_OPEN_TAG = <HEAD
HEAD_CLOSE_TAG = <\/HEAD>

Hn_OPEN_TAG = <Hn
Hn_CLOSE_TAG = <\/Hn>

HTML_OPEN_TAG = <HTML
HTML_CLOSE_TAG = <\/HTML>

IMG_OPEN_TAG = <IMG
IMG_CLOSE_TAG = <\/IMG>
//
INPUT_OPEN_TAG = <INPUT
INPUT_CLOSE_TAG = <\/INPUT>

LABEL_OPEN_TAG = <LABEL
LABEL_CLOSE_TAG = <\/LABEL>

INS_OPEN_TAG = <INS
INS_CLOSE_TAG = <\/INS>

KBD_OPEN_TAG = <KBD
KBD_CLOSE_TAG = <\/KBD>

//Attributes

SIZE_ATTR_HR_TAG = size=\"[^\"]*\"
WIDTH_ATTR_HR_TAG = width=\"[^\"]*\"

NAME_ATTR = name=\"[^\"]*\"
HREF_ATTR = href=\"[^\"]*\"
REL_ATTR = rel=\"[^\"]*\"
REV_ATTR = rev=\"[^\"]*\"
TITLE_ATTR = title=\"[^\"]*\"

SHAPE_ATTR = shape=\"[^\"]*\"
COORDS_ATTR = coords=\"[^\"]*\"
HREF_URL_ATTR = href=\"[^\"]*\"
ALT_ATTR = alt=\"[^\"]*\"
NOHREF_ATTR = "nohref"

BGCOLOR_ATTR = bgcolor=\"[^\"]*\"
BACKGROUND_ATTR = background=\"[^\"]*\"
TEXT_ATTR = text=\"[^\"]*\"
LINK_ATTR = link=\"[^\"]*\"
VLINK_ATTR = vlink=\"[^\"]*\"
ALINK_ATTR = alink=\"[^\"]*\"

COMPACT_ATTR = "compact"
ALIGN_ATTR = align=\"[^\"]*\"

COLOR_ATTR = color=\"[^\"]*\"
ACTION_ATTR = action=\"[^\"]*\"
METHOD_ATTR = method=\"[^\"]*\"
ENCTYPE_ATTR = enctype=\"[^\"]*\"

SRC_ATTR = src=\"[^\"]*\"
HEIGHT_ATTR = height=\"[^\"]*\"
HSPACE_ATTR = hspace=\"[^\"]*\"
VSPACE_ATTR = vspace=\"[^\"]*\"
ALT_ATTR = alt=\"[^\"]*\"
BORDER_ATTR = border=\"[^\"]*\"
USEMAP_ATTR = usemap=\"[^\"]*\"

TYPE_ATTR = type=\"[^\"]*\"
NAME_ATTR = name=\"[^\"]*\"
MAXLEN_ATTR = maxlength=\"[^\"]*\"
VALUE_ATTR = value=\"[^\"]*\"
CHECKED_ATTR = "checked"

//content of any tag
CONTENT = >[^<]*

/* section 3 */
%% 
class |
id |
size |
align |
while {lexeme=yytext(); return Attributes;}
{LineTerminator} {/*Ignore*/}
"//".* {/*Ignore*/}

/* Tags return */

{BIG_OPEN_TAG} {lexeme=yytext(); return BigOpen;}
{BIG_CLOSE_TAG} {lexeme=yytext(); return BigClose;}

{BDO_OPEN_TAG} {lexeme=yytext(); return BdoOpen;}
{BDO_CLOSE_TAG} {lexeme=yytext(); return BdoClose;}

{BASEFONT_OPEN_TAG} {lexeme=yytext(); return BaseFontOpen;}
{BASEFONT_CLOSE_TAG} {lexeme=yytext(); return BaseFontClose;}

{BODY_OPEN_TAG} {lexeme=yytext(); return BodyOpen;}
{BODY_CLOSE_TAG} {lexeme=yytext(); return BodyClose;}

{DIV_OPEN_TAG} {lexeme=yytext(); return DivOpen;}
{DIV_CLOSE_TAG} {lexeme=yytext(); return DivClose;}

{DIV_CLOSE_TAG} {lexeme=yytext(); return DivClose;}

{HR_OPEN_TAG} {lexeme=yytext(); return HrOpen;}
{HR_CLOSE_TAG} {lexeme=yytext(); return HrClose;}

{A_OPEN_TAG} {lexeme=yytext(); return AOpen;}
{A_CLOSE_TAG} {lexeme=yytext(); return AClose;}

{ABBR_OPEN_TAG} {lexeme=yytext(); return AbbrOpen;}
{ABBR_CLOSE_TAG} {lexeme=yytext(); return AbbrClose;}

{ACRONYM_OPEN_TAG} {lexeme=yytext(); return AcronymOpen;}
{ACRONYM_CLOSE_TAG} {lexeme=yytext(); return AcronymClose;}

{ADDRESS_OPEN_TAG} {lexeme=yytext(); return AddressOpen;}
{ADDRESS_CLOSE_TAG} {lexeme=yytext(); return AddressClose;}

{AREA_OPEN_TAG} {lexeme=yytext(); return AreaOpen;}
{AREA_CLOSE_TAG} {lexeme=yytext(); return AreaClose;}

{B_OPEN_TAG} {lexeme=yytext(); return BOpen;}
{B_CLOSE_TAG} {lexeme=yytext(); return BClose;}

{BR_OPEN_TAG} {lexeme=yytext(); return BrOpen;}
{BR_CLOSE_TAG} {lexeme=yytext(); return BrClose;}

{BASE_OPEN_TAG} {lexeme=yytext(); return BaseOpen;}
{BASE_CLOSE_TAG} {lexeme=yytext(); return BaseClose;}

{BLOCKQUOTE_OPEN_TAG} {lexeme=yytext(); return BLOCKQUOTEOpen;}
{BLOCKQUOTE_CLOSE_TAG} {lexeme=yytext(); return BLOCKQUOTEClose;}

{BUTTON_OPEN_TAG} {lexeme=yytext(); return BUTTONOpen;}
{BUTTON_CLOSE_TAG} {lexeme=yytext(); return BUTTONClose;}

{CAPTION_OPEN_TAG} {lexeme=yytext(); return CaptionOpen;}
{CAPTION_CLOSE_TAG} {lexeme=yytext(); return CaptionClose;}

{CENTER_OPEN_TAG} {lexeme=yytext(); return CenterOpen;}
{CENTER_CLOSE_TAG} {lexeme=yytext(); return CenterClose;}

{CITE_OPEN_TAG} {lexeme=yytext(); return CiteOpen;}
{CITE_CLOSE_TAG} {lexeme=yytext(); return CiteClose;}

{CODE_OPEN_TAG} {lexeme=yytext(); return CodeOpen;}
{CODE_CLOSE_TAG} {lexeme=yytext(); return CodeClose;}

{COL_OPEN_TAG} {lexeme=yytext(); return ColOpen;}
{COL_CLOSE_TAG} {lexeme=yytext(); return ColClose;}

{COLGROUP_OPEN_TAG} {lexeme=yytext(); return ColgroupOpen;}
{COLGROUP_CLOSE_TAG} {lexeme=yytext(); return ColgroupClose;}

{DD_OPEN_TAG} {lexeme=yytext(); return DdOpen;}
{DD_CLOSE_TAG} {lexeme=yytext(); return DdClose;}

{DEL_OPEN_TAG} {lexeme=yytext(); return DelOpen;}
{DEL_CLOSE_TAG} {lexeme=yytext(); return DelClose;}

{DFN_OPEN_TAG} {lexeme=yytext(); return DfnOpen;}
{DFN_CLOSE_TAG} {lexeme=yytext(); return DfnClose;}

{DIR_OPEN_TAG} {lexeme=yytext(); return DirOpen;}
{DIR_CLOSE_TAG} {lexeme=yytext(); return DirClose;}

{DL_OPEN_TAG} {lexeme=yytext(); return DlOpen;}
{DL_CLOSE_TAG} {lexeme=yytext(); return DlClose;}

{DT_OPEN_TAG} {lexeme=yytext(); return DtOpen;}
{DT_CLOSE_TAG} {lexeme=yytext(); return DtClose;}

{EM_OPEN_TAG} {lexeme=yytext(); return EmOpen;}
{EM_CLOSE_TAG} {lexeme=yytext(); return EmClose;}

{FIELDSET_OPEN_TAG} {lexeme=yytext(); return FieldsetOpen;}
{FIELDSET_CLOSE_TAG} {lexeme=yytext(); return FieldsetClose;}

{FONT_OPEN_TAG} {lexeme=yytext(); return FontOpen;}
{FONT_CLOSE_TAG} {lexeme=yytext(); return FontClose;}

{FORM_OPEN_TAG} {lexeme=yytext(); return FormOpen;}
{FORM_CLOSE_TAG} {lexeme=yytext(); return FormClose;}

{FRAME_OPEN_TAG} {lexeme=yytext(); return FrameOpen;}
{FRAME_CLOSE_TAG} {lexeme=yytext(); return FrameClose;}

{FRAMESET_OPEN_TAG} {lexeme=yytext(); return FramesetOpen;}
{FRAMESET_CLOSE_TAG} {lexeme=yytext(); return FramesetClose;}

{HEAD_OPEN_TAG} {lexeme=yytext(); return HeadOpen;}
{HEAD_CLOSE_TAG} {lexeme=yytext(); return HeadClose;}

{Hn_OPEN_TAG} {lexeme=yytext(); return HnOpen;}
{Hn_CLOSE_TAG} {lexeme=yytext(); return HnClose;}

{HTML_OPEN_TAG} {lexeme=yytext(); return HtmlOpen;}
{HTML_CLOSE_TAG} {lexeme=yytext(); return HtmlClose;}

{IMG_OPEN_TAG} {lexeme=yytext(); return ImgOpen;}
{IMG_CLOSE_TAG} {lexeme=yytext(); return ImgClose;}

{INPUT_OPEN_TAG} {lexeme=yytext(); return InputOpen;}
{INPUT_CLOSE_TAG} {lexeme=yytext(); return InputClose;}

{INS_OPEN_TAG} {lexeme=yytext(); return InsOpen;}
{INS_CLOSE_TAG} {lexeme=yytext(); return InsClose;}

{KBD_OPEN_TAG} {lexeme=yytext(); return KbdOpen;}
{KBD_CLOSE_TAG} {lexeme=yytext(); return KbdClose;}

{LABEL_OPEN_TAG} {lexeme=yytext(); return LabelOpen;}
{LABEL_CLOSE_TAG} {lexeme=yytext(); return LabelClose;}

/* Attributes return */

{SIZE_ATTR_HR_TAG} {lexeme=yytext(); return SIZE_ATTR_HR;}
{WIDTH_ATTR_HR_TAG} {lexeme=yytext(); return WIDTH_ATTR_HR;}

{NAME_ATTR} {lexeme=yytext(); return NAME_ATTR;}
{HREF_ATTR} {lexeme=yytext(); return HREF_ATTR;}
{REL_ATTR} {lexeme=yytext(); return REL_ATTR;}
{REV_ATTR} {lexeme=yytext(); return REV_ATTR;}
{TITLE_ATTR} {lexeme=yytext(); return TITLE_ATTR;}

{SHAPE_ATTR} {lexeme=yytext(); return SHAPE_ATTR;}
{COORDS_ATTR} {lexeme=yytext(); return COORDS_ATTR;}
{HREF_URL_ATTR} {lexeme=yytext(); return HREF_URL_ATTR;}
{ALT_ATTR} {lexeme=yytext(); return ALT_ATTR;}
{NOHREF_ATTR} {lexeme=yytext(); return NOHREF_ATTR;}

{BGCOLOR_ATTR} {lexeme=yytext(); return BGCOLOR_ATTR;}
{BACKGROUND_ATTR} {lexeme=yytext(); return BACKGROUND_ATTR;}
{TEXT_ATTR} {lexeme=yytext(); return TEXT_ATTR;}
{LINK_ATTR} {lexeme=yytext(); return LINK_ATTR;}
{ALINK_ATTR} {lexeme=yytext(); return ALINK_ATTR;}
{VLINK_ATTR} {lexeme=yytext(); return VLINK_ATTR;}

{COMPACT_ATTR} {lexeme=yytext(); return COMPACT_ATTR;}
{ALIGN_ATTR} {lexeme=yytext(); return ALIGN_ATTR;}

{COLOR_ATTR} {lexeme=yytext(); return COLOR_ATTR;}
{ACTION_ATTR} {lexeme=yytext(); return ACTION_ATTR;}
{METHOD_ATTR} {lexeme=yytext(); return METHOD_ATTR;}
{ENCTYPE_ATTR} {lexeme=yytext(); return ENCTYPE_ATTR;}

{SRC_ATTR} {lexeme=yytext(); return SRC_ATTR;}
{HSPACE_ATTR} {lexeme=yytext(); return HSPACE_ATTR;}
{VSPACE_ATTR} {lexeme=yytext(); return VSPACE_ATTR;}
{BORDER_ATTR} {lexeme=yytext(); return BORDER_ATTR;}
{USEMAP_ATTR} {lexeme=yytext(); return USEMAP_ATTR;}

{TYPE_ATTR} {lexeme=yytext(); return TYPE_ATTR;}
{NAME_ATTR} {lexeme=yytext(); return NAME_ATTR;}
{VALUE_ATTR} {lexeme=yytext(); return VALUE_ATTR;}
{MAXLEN_ATTR} {lexeme=yytext(); return MAXLEN_ATTR;}
{CHECKED_ATTR} {lexeme=yytext(); return CHECKED_ATTR;}

{CONTENT} {lexeme=yytext(); return Content;}
 . {return ERROR;}

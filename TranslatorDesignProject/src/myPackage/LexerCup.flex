
package myPackage;
import java_cup.runtime.Symbol;

%% 
%class LexerCup
%type java_cup.runtime.Symbol
%cup
%full
%line
%char
%{ /*section1 */
    private Symbol symbol(int type, Object value){
        return new Symbol(type, yyline, yycolumn, value);
    }
    private Symbol symbol(int type){
        return new Symbol(type, yyline, yycolumn);
    }
%}

/*section 2 */
L = [a-zA-Z_]+
D = [0-9]+
LineTerminator = [ ,\t,\r,\n]+
End = >[, ,\t,\r,\n]+ |>
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

HR_OPEN_TAG = [\n, ]+<(H|h)(R|r) | <(H|h)(R|r)
HR_CLOSE_TAG = <\/(H|h)(R|r)>

A_OPEN_TAG = <(A|a)
A_CLOSE_TAG = <\/(A|a)>

ABBR_OPEN_TAG = <(A|a)(B|b)(B|b)(R|r)
ABBR_CLOSE_TAG = <\/(A|a)(B|b)(B|b)(R|r)>

ACRONYM_OPEN_TAG = <(A|a)(C|c)(R|r)(O|o)(N|n)(Y|y)(M|m)
ACRONYM_CLOSE_TAG = <\/(A|a)(C|c)(R|r)(O|o)(N|n)(Y|y)(M|m)>

ADDRESS_OPEN_TAG = [\n, ]+<(A|a)(D|d)(D|d)(R|r)(E|e)(S|s)(S|s) | <(A|a)(D|d)(D|d)(R|r)(E|e)(S|s)(S|s)
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
HTML_CLOSE_TAG = [\n]+<\/HTML>

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

/* Tags return */

{BIG_OPEN_TAG} {return symbol(sym.BigOpen);}
{BIG_CLOSE_TAG} {return symbol(sym.BigClose);}

{BDO_OPEN_TAG} {return new Symbol(sym.BdoOpen, yychar, yyline, yytext());}
{BDO_CLOSE_TAG} {return new Symbol(sym.BdoClose, yychar, yyline, yytext());}


{BASEFONT_OPEN_TAG} {return symbol(sym.BaseFontOpen);}
{BASEFONT_CLOSE_TAG} {return symbol(sym.BaseFontClose);}

{BODY_OPEN_TAG} {return symbol(sym.BodyOpen);}
{BODY_CLOSE_TAG} {return symbol(sym.BodyClose);}

{DIV_OPEN_TAG} {return symbol(sym.DivOpen);}
{DIV_CLOSE_TAG} {return symbol(sym.DivClose);}

{DIV_CLOSE_TAG} {return symbol(sym.DivClose);}

{HR_OPEN_TAG} {return symbol(sym.HrOpen);}
{HR_CLOSE_TAG} {return symbol(sym.HrClose);}

{A_OPEN_TAG} {return symbol(sym.AOpen);}
{A_CLOSE_TAG} {return symbol(sym.AClose);}

{ABBR_OPEN_TAG} {return symbol(sym.AbbrOpen);}
{ABBR_CLOSE_TAG} {return symbol(sym.AbbrClose);}

{ACRONYM_OPEN_TAG} {return symbol(sym.AcronymOpen);}
{ACRONYM_CLOSE_TAG} {return symbol(sym.AcronymClose);}

{ADDRESS_OPEN_TAG} {return symbol(sym.AddressOpen);}
{ADDRESS_CLOSE_TAG} {return symbol(sym.AddressClose);}

{AREA_OPEN_TAG} {return symbol(sym.AreaOpen);}
{AREA_CLOSE_TAG} {return symbol(sym.AreaClose);}

{B_OPEN_TAG} {return symbol(sym.BOpen);}
{B_CLOSE_TAG} {return symbol(sym.BClose);}

{BR_OPEN_TAG} {return symbol(sym.BrOpen);}
{BR_CLOSE_TAG} {return symbol(sym.BrClose);}

{BASE_OPEN_TAG} {return symbol(sym.BaseOpen);}
{BASE_CLOSE_TAG} {return symbol(sym.BaseClose);}

{BLOCKQUOTE_OPEN_TAG} {return symbol(sym.BLOCKQUOTEOpen);}
{BLOCKQUOTE_CLOSE_TAG} {return symbol(sym.BLOCKQUOTEClose);}

{BUTTON_OPEN_TAG} {return symbol(sym.BUTTONOpen);}
{BUTTON_CLOSE_TAG} {return symbol(sym.BUTTONClose);}

{CAPTION_OPEN_TAG} {return symbol(sym.CaptionOpen);}
{CAPTION_CLOSE_TAG} {return symbol(sym.CaptionClose);}

{CENTER_OPEN_TAG} {return symbol(sym.CenterOpen);}
{CENTER_CLOSE_TAG} {return symbol(sym.CenterClose);}

{CITE_OPEN_TAG} {return symbol(sym.CiteOpen);}
{CITE_CLOSE_TAG} {return symbol(sym.CiteClose);}

{CODE_OPEN_TAG} {return symbol(sym.CodeOpen);}
{CODE_CLOSE_TAG} {return symbol(sym.CodeClose);}

{COL_OPEN_TAG} {return symbol(sym.ColOpen);}
{COL_CLOSE_TAG} {return symbol(sym.ColClose);}

{COLGROUP_OPEN_TAG} {return symbol(sym.ColgroupOpen);}
{COLGROUP_CLOSE_TAG} {return symbol(sym.ColgroupClose);}

{DD_OPEN_TAG} {return symbol(sym.DdOpen);}
{DD_CLOSE_TAG} {return symbol(sym.DdClose);}

{DEL_OPEN_TAG} {return symbol(sym.DelOpen);}
{DEL_CLOSE_TAG} {return symbol(sym.DelClose);}

{DFN_OPEN_TAG} {return symbol(sym.DfnOpen);}
{DFN_CLOSE_TAG} {return symbol(sym.DfnClose);}

{DIR_OPEN_TAG} {return symbol(sym.DirOpen);}
{DIR_CLOSE_TAG} {return symbol(sym.DirClose);}

{DL_OPEN_TAG} {return symbol(sym.DlOpen);}
{DL_CLOSE_TAG} {return symbol(sym.DlClose);}

{DT_OPEN_TAG} {return symbol(sym.DtOpen);}
{DT_CLOSE_TAG} {return symbol(sym.DtClose);}

{EM_OPEN_TAG} {return symbol(sym.EmOpen);}
{EM_CLOSE_TAG} {return symbol(sym.EmClose);}

{FIELDSET_OPEN_TAG} {return symbol(sym.FieldsetOpen);}
{FIELDSET_CLOSE_TAG} {return symbol(sym.FieldsetClose);}

{FONT_OPEN_TAG} {return symbol(sym.FontOpen);}
{FONT_CLOSE_TAG} {return symbol(sym.FontClose);}

{FORM_OPEN_TAG} {return symbol(sym.FormOpen);}
{FORM_CLOSE_TAG} {return symbol(sym.FormClose);}

{FRAME_OPEN_TAG} {return symbol(sym.FrameOpen);}
{FRAME_CLOSE_TAG} {return symbol(sym.FrameClose);}

{FRAMESET_OPEN_TAG} {return symbol(sym.FramesetOpen);}
{FRAMESET_CLOSE_TAG} {return symbol(sym.FramesetClose);}

{HEAD_OPEN_TAG} {return symbol(sym.HeadOpen);}
{HEAD_CLOSE_TAG} {return symbol(sym.HeadClose);}

{Hn_OPEN_TAG} {return symbol(sym.HnOpen);}
{Hn_CLOSE_TAG} {return symbol(sym.HnClose);}

{HTML_OPEN_TAG} {return symbol(sym.HtmlOpen);}
{HTML_CLOSE_TAG} {return symbol(sym.HtmlClose);}

{IMG_OPEN_TAG} {return symbol(sym.ImgOpen);}
{IMG_CLOSE_TAG} {return symbol(sym.ImgClose);}

{INPUT_OPEN_TAG} {return symbol(sym.InputOpen);}
{INPUT_CLOSE_TAG} {return symbol(sym.InputClose);}

{INS_OPEN_TAG} {return symbol(sym.InsOpen);}
{INS_CLOSE_TAG} {return symbol(sym.InsClose);}

{KBD_OPEN_TAG} {return symbol(sym.KbdOpen);}
{KBD_CLOSE_TAG} {return symbol(sym.KbdClose);}

{LABEL_OPEN_TAG} {return symbol(sym.LabelOpen);}
{LABEL_CLOSE_TAG} {return symbol(sym.LabelClose);}

{HTML_OPEN_TAG} {return symbol(sym.HtmlOpen);}
{HTML_CLOSE_TAG} {return symbol(sym.HtmlClose);}

/* Attributes return */

{SIZE_ATTR_HR_TAG} {return new Symbol(sym.SIZE_ATTR_HR, yychar, yyline, yytext());}
{WIDTH_ATTR_HR_TAG} {return new Symbol(sym.WIDTH_ATTR_HR, yychar, yyline, yytext());}


{NAME_ATTR} {return symbol(sym.NAME_ATTR);}
//{HREF_ATTR} {return symbol(sym.HREF_ATTR);}
{REL_ATTR} {return symbol(sym.REL_ATTR);}
{REV_ATTR} {return symbol(sym.REV_ATTR);}
{TITLE_ATTR} {return symbol(sym.TITLE_ATTR);}

{SHAPE_ATTR} {return symbol(sym.SHAPE_ATTR);}
{COORDS_ATTR} {return symbol(sym.COORDS_ATTR);}
{HREF_URL_ATTR} {return symbol(sym.HREF_URL_ATTR);}
{ALT_ATTR} {return symbol(sym.ALT_ATTR);}
{NOHREF_ATTR} {return symbol(sym.NOHREF_ATTR);}

{BGCOLOR_ATTR} {return symbol(sym.BGCOLOR_ATTR);}
{BACKGROUND_ATTR} {return symbol(sym.BACKGROUND_ATTR);}
{TEXT_ATTR} {return symbol(sym.TEXT_ATTR);}
{LINK_ATTR} {return symbol(sym.LINK_ATTR);}
{ALINK_ATTR} {return symbol(sym.ALINK_ATTR);}
{VLINK_ATTR} {return symbol(sym.VLINK_ATTR);}

{COMPACT_ATTR} {return symbol(sym.COMPACT_ATTR);}
{ALIGN_ATTR} {return symbol(sym.ALIGN_ATTR);}

{COLOR_ATTR} {return symbol(sym.COLOR_ATTR);}
{ACTION_ATTR} {return symbol(sym.ACTION_ATTR);}
{METHOD_ATTR} {return symbol(sym.METHOD_ATTR);}
{ENCTYPE_ATTR} {return symbol(sym.ENCTYPE_ATTR);}

{SRC_ATTR} {return symbol(sym.SRC_ATTR);}
{HSPACE_ATTR} {return symbol(sym.HSPACE_ATTR);}
{VSPACE_ATTR} {return symbol(sym.VSPACE_ATTR);}
{BORDER_ATTR} {return symbol(sym.BORDER_ATTR);}
{USEMAP_ATTR} {return symbol(sym.USEMAP_ATTR);}

{TYPE_ATTR} {return symbol(sym.TYPE_ATTR);}
{NAME_ATTR} {return symbol(sym.NAME_ATTR);}
{VALUE_ATTR} {return symbol(sym.VALUE_ATTR);}
{MAXLEN_ATTR} {return symbol(sym.MAXLEN_ATTR);}
{CHECKED_ATTR} {return symbol(sym.CHECKED_ATTR);}

{LineTerminator} {return symbol(sym.LineTerminator);}
{End} {return symbol(sym.EndOpenedTag);}
{CONTENT} {return new Symbol(sym.CONTENT, yychar, yyline, yytext());}
 . {return new Symbol(sym.ERROR, yychar, yyline, yytext());}

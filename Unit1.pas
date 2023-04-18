unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form1 = class(Form)
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure button2_Click(sender: Object; e: EventArgs);
    procedure button3_Click(sender: Object; e: EventArgs);
    procedure button4_Click(sender: Object; e: EventArgs);
    procedure button5_Click(sender: Object; e: EventArgs);
    procedure button6_Click(sender: Object; e: EventArgs);
    procedure button10_Click(sender: Object; e: EventArgs);
    procedure button7_Click(sender: Object; e: EventArgs);
    procedure button9_Click(sender: Object; e: EventArgs);
    procedure button8_Click(sender: Object; e: EventArgs);
    procedure button11_Click(sender: Object; e: EventArgs);
    procedure button12_Click(sender: Object; e: EventArgs);
    procedure button13_Click(sender: Object; e: EventArgs);
    procedure button14_Click(sender: Object; e: EventArgs);
    procedure button15_Click(sender: Object; e: EventArgs);
    procedure button16_Click(sender: Object; e: EventArgs);
    procedure Form1_Load(sender: Object; e: EventArgs);
    procedure ButtonBackspaceClick(sender: Object; e: EventArgs);
    procedure ButtonReverseClick(sender: Object; e: EventArgs);
    procedure ButtonSquareClick(sender: Object; e: EventArgs);
  {$region FormDesigner}
  internal
    {$resource Unit1.Form1.resources}
    button1: Button;
    button2: Button;
    button3: Button;
    button4: Button;
    button5: Button;
    button6: Button;
    button7: Button;
    button8: Button;
    button9: Button;
    button10: Button;
    button11: Button;
    button12: Button;
    button14: Button;
    button15: Button;
    textBox1: TextBox;
    button13: Button;
    button17: Button;
    button18: Button;
    button20: Button;
    button16: Button;
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

var
  n1, n2: integer; znak: char;

procedure Form1.button1_Click(sender: Object; e: EventArgs);
begin
  textbox1.Text := textbox1.Text + '1';
end;

procedure Form1.button2_Click(sender: Object; e: EventArgs);
begin
  textbox1.Text := textbox1.Text + '2';
end;

procedure Form1.button3_Click(sender: Object; e: EventArgs);
begin
  textbox1.Text := textbox1.Text + '3';
end;

procedure Form1.button4_Click(sender: Object; e: EventArgs);
begin
  textbox1.Text := textbox1.Text + '4';
end;

procedure Form1.button5_Click(sender: Object; e: EventArgs);
begin
  textbox1.Text := textbox1.Text + '5';
end;

procedure Form1.button6_Click(sender: Object; e: EventArgs);
begin
  textbox1.Text := textbox1.Text + '6';
end;

procedure Form1.button10_Click(sender: Object; e: EventArgs);
begin
  textbox1.Text := textbox1.Text + '7';
end;

procedure Form1.button7_Click(sender: Object; e: EventArgs);
begin
  textbox1.Text := textbox1.Text + '8';
end;

procedure Form1.button9_Click(sender: Object; e: EventArgs);
begin
  textbox1.Text := textbox1.Text + '9';
end;

procedure Form1.button8_Click(sender: Object; e: EventArgs);
begin
  textbox1.Text := textbox1.Text + '0';
end;

procedure Form1.button11_Click(sender: Object; e: EventArgs);
begin
  textbox1.Clear;
  n1 := 0;
  n2 := 0;
  znak := ' ';
end;

procedure Form1.button12_Click(sender: Object; e: EventArgs);
begin
  if TryStrToInt(textbox1.Text, n1) then
  begin
    n1 := StrToInt(textbox1.Text);
    znak := '+';
    textbox1.Clear;
  end
end;

procedure Form1.button15_Click(sender: Object; e: EventArgs);
begin
  if TryStrToInt(textbox1.Text, n1) then
  begin
    znak := '*';
    textbox1.Clear;
  end
end;

procedure Form1.button13_Click(sender: Object; e: EventArgs);
begin
  if TryStrToInt(textbox1.Text, n1) then
  begin
    n1 := StrToInt(textbox1.Text);
    znak := '-';
    textbox1.Clear;
  end
end;

procedure Form1.button14_Click(sender: Object; e: EventArgs);
var
  n: Integer;
begin
  if TryStrToInt(TextBox1.Text, n) then
  begin
    n1 := n;
    znak := '/';
    TextBox1.Clear;
  end
end;

procedure Form1.button16_Click(sender: Object; e: EventArgs);
var
  isNumber: Boolean;
begin
  isNumber := TryStrToInt(textbox1.Text, n2);
  if not isNumber then
    Exit;
  
  case znak of
    '+': textbox1.Text := FloatToStr(n1 + n2);
    '-': textbox1.Text := FloatToStr(n1 - n2);
    '*': textbox1.Text := FloatToStr(n1 * n2);
    '/': 
      begin
        if n2 = 0 then
          textbox1.Text := 'Ошибка'
        else
          textbox1.Text := FloatToStr(n1 / n2);
      end;
  end;
end;



procedure Form1.Form1_Load(sender: Object; e: EventArgs);
begin
  
end;

procedure Form1.ButtonBackspaceClick(sender: Object; e: EventArgs);
begin
  if Length(textbox1.Text) > 0 then
    textbox1.Text := Copy(textbox1.Text, 1, Length(textbox1.Text) - 1);
end;

procedure Form1.ButtonReverseClick(sender: Object; e: EventArgs);
var
  n: Integer;
begin
  if not TryStrToInt(TextBox1.Text, n) then
  begin
    Exit;
  end;
  
  if n > 0 then
  begin
    n := -n;
    TextBox1.Text := IntToStr(n);
  end
  else if n < 0 then
  begin
    n := Abs(n);
    TextBox1.Text := IntToStr(n);
  end;
end;

procedure Form1.ButtonSquareClick(sender: Object; e: EventArgs);
var
  num: Double;
begin
  if TryStrToFloat(TextBox1.Text, num) then
  begin
    num := Sqr(num);
    TextBox1.Text := FloatToStr(num);
  end;
end;

end.
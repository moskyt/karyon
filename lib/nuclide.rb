module Karyon
  class Nuclide

    wiki_element_list = <<STR
0 - - - - - -
1	Hydrogen	H	1.00794(7)2 3 4	1	1
2	Helium	He	4.002602(2)2 4	18	1
3	Lithium	Li	6.941(2)2 3 4 5	1	2
4	Beryllium	Be	9.012182(3)	2	2
5	Boron	B	10.811(7)2 3 4	13	2
6	Carbon	C	12.0107(8)2 4	14	2
7	Nitrogen	N	14.0067(2)2 4	15	2
8	Oxygen	O	15.9994(3)2 4	16	2
9	Fluorine	F	18.9984032(5)	17	2
10	Neon	Ne	20.1797(6)2 3	18	2
11	Sodium (Natrium)	Na	22.98976928(2)	1	3
12	Magnesium	Mg	24.3050(6)	2	3
13	Aluminium (Aluminum)	Al	26.9815386(8)	13	3
14	Silicon	Si	28.0855(3)4	14	3
15	Phosphorus	P	30.973762(2)	15	3
16	Sulfur	S	32.065(5)2 4	16	3
17	Chlorine	Cl	35.453(2)2 3 4	17	3
18	Argon	Ar	39.948(1)2 4	18	3
19	Potassium (Kalium)	K	39.0983(1)	1	4
20	Calcium	Ca	40.078(4)2	2	4
21	Scandium	Sc	44.955912(6)	3	4
22	Titanium	Ti	47.867(1)	4	4
23	Vanadium	V	50.9415(1)	5	4
24	Chromium	Cr	51.9961(6)	6	4
25	Manganese	Mn	54.938045(5)	7	4
26	Iron (Ferrum)	Fe	55.845(2)	8	4
28	Nickel	Ni	58.6934(4)	10	4
27	Cobalt	Co	58.933195(5)	9	4
29	Copper (Cuprum)	Cu	63.546(3)4	11	4
30	Zinc	Zn	65.38(2)	12	4
31	Gallium	Ga	69.723(1)	13	4
32	Germanium	Ge	72.64(1)	14	4
33	Arsenic	As	74.92160(2)	15	4
34	Selenium	Se	78.96(3)4	16	4
35	Bromine	Br	79.904(1)	17	4
36	Krypton	Kr	83.798(2)2 3	18	4
37	Rubidium	Rb	85.4678(3)2	1	5
38	Strontium	Sr	87.62(1)2 4	2	5
39	Yttrium	Y	88.90585(2)	3	5
40	Zirconium	Zr	91.224(2)2	4	5
41	Niobium	Nb	92.90638(2)	5	5
42	Molybdenum	Mo	95.96(2)2	6	5
43	Technetium	Tc	[98]1	7	5
44	Ruthenium	Ru	101.07(2)2	8	5
45	Rhodium	Rh	102.90550(2)	9	5
46	Palladium	Pd	106.42(1)2	10	5
47	Silver(Argentum)	Ag	107.8682(2)2	11	5
48	Cadmium	Cd	112.411(8)2	12	5
49	Indium	In	114.818(3)	13	5
50	Tin(Stannum)	Sn	118.710(7)2	14	5
51	Antimony(Stibium)	Sb	121.760(1)2	15	5
52	Tellurium	Te	127.60(3)2	16	5
53	Iodine	I	126.90447(3)	17	5
54	Xenon	Xe	131.293(6)2 3	18	5
55	Caesium(Cesium)	Cs	132.9054519(2)	1	6
56	Barium	Ba	137.327(7)	2	6
57	Lanthanum	La	138.90547(7)2	n/a	6
58	Cerium	Ce	140.116(1)2	n/a	6
59	Praseodymium	Pr	140.90765(2)	n/a	6
60	Neodymium	Nd	144.242(3)2	n/a	6
61	Promethium	Pm	[145]1	n/a	6
62	Samarium	Sm	150.36(2)2	n/a	6
63	Europium	Eu	151.964(1)2	n/a	6
64	Gadolinium	Gd	157.25(3)2	n/a	6
65	Terbium	Tb	158.92535(2)	n/a	6
66	Dysprosium	Dy	162.500(1)2	n/a	6
67	Holmium	Ho	164.93032(2)	n/a	6
68	Erbium	Er	167.259(3)2	n/a	6
69	Thulium	Tm	168.93421(2)	n/a	6
70	Ytterbium	Yb	173.054(5)2	n/a	6
71	Lutetium	Lu	174.9668(1)2	3	6
72	Hafnium	Hf	178.49(2)	4	6
73	Tantalum	Ta	180.94788(2)	5	6
74	Tungsten(Wolfram)	W	183.84(1)	6	6
75	Rhenium	Re	186.207(1)	7	6
76	Osmium	Os	190.23(3)2	8	6
77	Iridium	Ir	192.217(3)	9	6
78	Platinum	Pt	195.084(9)	10	6
79	Gold(Aurum)	Au	196.966569(4)	11	6
80	Mercury(Hydrargyrum)	Hg	200.59(2)	12	6
81	Thallium	Tl	204.3833(2)	13	6
82	Lead(Plumbum)	Pb	207.2(1)2 4	14	6
83	Bismuth	Bi	208.98040(1)	15	6
84	Polonium	Po	[210]1	16	6
85	Astatine	At	[210]1	17	6
86	Radon	Rn	[220]1	18	6
87	Francium	Fr	[223]1	1	7
88	Radium	Ra	[226]1	2	7
89	Actinium	Ac	[227]1	n/a	7
90	Thorium	Th	232.03806(2)1 2	n/a	7
91	Protactinium	Pa	231.03588(2)1	n/a	7
92	Uranium	U	238.02891(3)1 2 3	n/a	7
93	Neptunium	Np	[237]1	n/a	7
94	Plutonium	Pu	[244]1	n/a	7
95	Americium	Am	[243]1	n/a	7
96	Curium	Cm	[247]1	n/a	7
97	Berkelium	Bk	[247]1	n/a	7
98	Californium	Cf	[251]1	n/a	7
99	Einsteinium	Es	[252]1	n/a	7
100	Fermium	Fm	[257]1	n/a	7
101	Mendelevium	Md	[258]1	n/a	7
102	Nobelium	No	[259]1	n/a	7
103	Lawrencium	Lr	[262]1	3	7
104	Rutherfordium	Rf	[261]1	4	7
105	Dubnium	Db	[262]1	5	7
106	Seaborgium	Sg	[266]1	6	7
107	Bohrium	Bh	[264]1	7	7
108	Hassium	Hs	[277]1	8	7
109	Meitnerium	Mt	[268]1	9	7
110	Darmstadtium	Ds	[271]1	10	7
111	Roentgenium	Rg	[272]1	11	7
112	Ununbium	Uub	[285]1	12	7
113	Ununtrium	Uut	[284]1	13	7
114	Ununquadium	Uuq	[289]1	14	7
115	Ununpentium	Uup	[288]1	15	7
116	Ununhexium	Uuh	[292]1	16	7
118	Ununoctium	Uuo	[294]1	18	7
STR

    ELEMENTS = wiki_element_list.split("\n").map do |line|
      foo = line.split
      if foo[3].include? '('
        foo[3] =~ /^(.+)\(/
        mass = $1.to_f
      elsif foo[3].include? '['
        foo[3] =~ /\[(.+)\]/
        mass = $1.to_f
      else
        mass = foo[3].to_f
      end
      {:name => foo[1], :abbr => foo[2].downcase, :mass => mass}
    end
    
    attr_reader :z, :a, :i
  
    def initialize
      @z, @a, @i = nil, nil, nil
    end
  
  
    def to_s(format = :dashed)
      case format
        when :dashed
          ELEMENTS[@z][:abbr].downcase + "-" + @a.to_s + (@i>0 ? "m" : "")
        when :Dashed 
          ELEMENTS[@z][:abbr].capitalize + "-" + @a.to_s + (@i>0 ? "m" : "")
        when :compact
          ELEMENTS[@z][:abbr].downcase + @a.to_s + (@i>0 ? "m" : "")
        when :Compact
          ELEMENTS[@z][:abbr].capitalize + @a.to_s + (@i>0 ? "m" : "")
        when :zai
          sprintf("%d%03d%01d", @z, @a, @i)
        when :zai6
          sprintf("%02d%03d%01d", @z, @a, @i)
        when :zai5
          sprintf("%02d%03d", @z, @a)
        when :gnuplot
          "^{" + @a.to_s + (@i > 0 ? "m" : "") + "}" + ELEMENTS[@z][:abbr].downcase
        when :Gnuplot
          "^{" + @a.to_s + (@i > 0 ? "m" : "") + "}" + ELEMENTS[@z][:abbr].capitalize
        when :latex
          "$^\\textrm{" + @a.to_s + (@i > 0 ? "m" : "") + "}$" + ELEMENTS[@z][:abbr].downcase
        when :Latex
          "$^\\textrm{" + @a.to_s + (@i > 0 ? "m" : "") + "}$" + ELEMENTS[@z][:abbr].capitalize
        else
          raise "Unknown format #{format}"
      end
    end
  
    def self.from_zai(z, a, i = 0)
      n = Nuclide::new
      n.from_zai(z, a, i)
      n
    end

    def from_zai(z, a, i = 0)
      @z, @a, @i = z, a, i
    end

  
    def self.from_text(text)
      n = Nuclide::new
      n.from_text(text)
      n
    end
  
    def from_text(text)
      s = Nuclide::normalize_text(text)
      if s =~ /^\s*([A-Za-z]+)(\d+)([Mm])?\s*$/
        element, @a = $1, $2.to_i
        @i = 0
        @i = $3.to_i if $3
        @i = 1 if $3 and $3.downcase == 'm'
      end
      @z = Nuclide::element_to_z(element)
    end
  
    def self.conv(s, format)
      Nuclide::from_text(s).to_s(format)
    end
  
    def self.normalize_text(s)
      if s =~ /^[^a-zA-Z0-9]*([a-zA-Z]+)[^a-zA-Z0-9]*(\d+)(m)?[^a-zA-Z0-9]*$/
        $1.downcase+$2+($3 ? $3.downcase : "")
      elsif s =~ /^[^a-zA-Z0-9]*(\d+)([a-zA-Z]+)$/
        $2.downcase+$1
      elsif s =~ /^[^a-zA-Z0-9]*([a-zA-Z]+)[^a-zA-Z0-9]*(\d+)(m)?[^a-zA-Z0-9]*$/
        $1.downcase+$2+($3 ? $3.downcase : "")
      else
        raise "Text Nuclide identifier '#{s}' cannot be parsed."
      end
    end
  
    def self.element_to_z(element)
      z = ELEMENTS.index(ELEMENTS.find{|x| x[:abbr] == element.downcase})
      raise "Element #{element} not found" unless z
      z
    end
  
    def mass
      if a > 0 
        a
      else
        ELEMENTS[z][:mass]
      end
    end
  
  end
end
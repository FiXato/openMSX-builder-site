bplist00�       	 
X$versionT$topY$archiverX$objects ���  Troot�_NSKeyedArchiver�o     1 < = > ? E K S T V b e h k n x | } � � � � � � I � � � � � � � � � � � � � � � � �#&049<HKNQUVYco}�������������������������+/38BFKORSVZ^U$null�        V$class\NSAttributesXNSString_NSAttributeInfo�n���loK o p e n M S X - B u i l d e r 
 
 o p e n M S X - B u i l d e r   i s   u s e d   f o r   b u i l d i n g   t h e   l a t e s t   S V N   c h e c k o u t s   o f   o p e n M S X   a n d   o p e n M S X - D e b u g g e r   f r o m   t h e i r   s o u r c e f o r g e   r e p o s i t o r y . ( I t   a l s o   s u p p o r t s   p u b l i s h i n g   t h e   c r e a t e d   b u i l d s   t o   a n   e x t e r n a l   l o c a t i o n   v i a   s c p .   T h e   o r i g i n a l   s e t u p   p u b l i s h e s   t o   F i X a t o ' s   o p e n M S X   p a g e . ( S u c c e s s f u l l y   p u b l i s h e d   b u i l d s   c a n   a l s o   b e   a n n o u n c e d   v i a   T w i t t e r .   @ o p e n m s x _ b u i l d e r   i s   t h e   o f f i c i a l   T w i t t e r   h o m e   f o r   o p e n M S X - B u i l d e r . 
 I n s t a l l a t i o n   G u i d e l i n e s 
 
 F r o m   G i t : 
 g i t   c l o n e   g i t : / / g i t h u b . c o m / F i X a t o / o p e n M S X - b u i l d e r . g i t   & &   c d   o p e n M S X - b u i l d e r   & &   r a k e   i n s t a l l 
 F r o m   R u b y F o r g e / G e m C u t t e r : 
 g e m   i n s t a l l   o p e n M S X - b u i l d e r 
 U s a g e 
 
 T h e   f i r s t   2   t i m e s   y o u   r u n   b u i l d _ o p e n m s x   i t   w i l l   p r o b a b l y   s a y   y o u   w i l l   n e e d   t o   s e t   u p   t h e   c o n f i g u r a t i o n   f i l e s   f o r   t h e   b u i l d e r   a n d   t h e   t w i t t e r   m o d u l e .   S e t t i n g   u p   t h e   S M T P   a n d   b u i l d e r   c o n f i g u r a t i o n   s e t t i n g s   s h o u l d   b e   p r e t t y   s t r a i g h t f o r w a r d .   S e t   u p   o f   t h e   o a u t h   i n f o   h a s   t o   b e   d o n e   m a n u a l l y   a t   t h e   m o m e n t ,   f o r   m o r e   i n f o r m a t i o n   o n   t h a t   r e a d   a b o u t   t h e   a m a z i n g   t w i t t e r _ o a u t h   g e m ,   T w i t t e r ' s   o A u t h   A p p l i c a t i o n s   a n d   T w i t t e r ' s   A u t h e n t i c a t i o n   W i k i 
 C o m m a n d l i n e   A r g u m e n t s 
 C u r r e n t l y   b u i l d _ o p e n m s x   s u p p o r t s   t h e   f o l l o w i n g   c o m m a n d - l i n e   a r g u m e n t s : 
 	 " 	 - - p u b l i s h   = >   P u b l i s h   t h e   c r e a t e d   b u i l d 
 	 " 	 - - p u b l i s h - c u r r e n t   = >   O n l y   p u b l i s h   t h e   c u r r e n t   b u i l d   a n d   e x i t 
 	 " 	 - - p u b l i s h - a l l   = >   O n l y   p u b l i s h   a l l   p r e v i o u s l y   c r e a t e d   b u i l d s   a n d   e x i t 
 	 " 	 - - t w e e t   = >   S e n d   a   t w e e t   v i a   c o n f i g u r e d   a u t h o r i s e d   T w i t t e r   a c c o u n t   a f t e r   s u c c e s s f u l l y   h a v i n g   p u b l i s h e d   a   b u i l d 
 	 " 	 - - d o n t - u p d a t e   = >   D o n ' t   u p d a t e   t h e   S V N   r e p o s i t o r y 
 	 " 	 - - r e p o r t - b u i l d - f a i l u r e   = >   I f   a n   e r r o r   o c c u r s   d u r i n g   b u i l d ,   r e p o r t   f a i l u r e   v i a   e - m a i l 
 	 " 	 - - v e r s i o n   = >   R e t u r n   t h e   c u r r e n t   V E R S I O N   o f   o p e n M S X - B u i l d e r 
 B y   d e f a u l t   o n l y   f a t a l   e r r o r s   w i l l   b e   o u t p u t   v i a   S T D O U T .   H o w e v e r ,   t h e   f o l l o w i n g   c o m m a n d - l i n e   a r g u m e n t s   a r e   a v a i l a b l e   t o   s e t   t h e   v e r b o s i t y : 
 	 " 	 - - l o g - e r r o r s   = >   F a t a l   a n d   n o n - f a t a l   e r r o r s . 
 	 " 	 - - w a r n   = >   L o g s   w a r n i n g s   b e s i d e s   t h e   ( n o n - ) f a t a l   e r r o r s . 
 	 " 	 - - v e r b o s e   = >   B e s i d e s   t h e   - - w a r n   o u t p u t ,   a l s o   o u t p u t s   i n f o . 
 	 " 	 - - d e b u g   = >   M o s t   v e r b o s e   f o r m .   - - v e r b o s e   p l u s   d e b u g   i n f o . 
 E x a m p l e s 
 S i m p l e s t   w a y   t o   r u n   i t   w o u l d   u s u a l l y   b e :   b u i l d _ o p e n m s x   - - v e r b o s e   - - p u b l i s h   - - t w e e t   - - r e p o r t - b u i l d - f a i l u r e 
 O r   b y   a d d i n g   a   c r o n j o b   f o r :   0   3   *   *   *   b u i l d _ o p e n m s x   - - p u b l i s h   - - t w e e t   - - r e p o r t - b u i l d - f a i l u r e   - - l o g - e r r o r s   t o   h a v e   i t   r u n   d a i l y   a t   3   a t   n i g h t .   ( R e m e m b e r   t o   a d d   e i t h e r   s o u r c e   ~ / . p r o f i l e   o r   t h e   r i g h t   P A T H   t o   y o u r   c r o n . ) 
 T o D o 
 
 C u r r e n t   l i s t   o f   t a s k s   i s : 
 	 " 	 I n t e g r a t e   w i t h   C I A . v c   /   R u b y - R b o t 
 	 " 	 A d d   t e s t s 
 	 " 	 R e f a c t o r   # a r c h i v e _ f o r _ r e v i s i o n   a n d   # d m g _ f o r _ r e v i s i o n   i n t o   a   s i n g l e   m e t h o d 
 	 " 	 C r e a t e   a   s i m p l e   S i n a t r a   A p p   f o r   o p e n M S X . F i X a t o . n e t 
 	 " 	 A l l o w   f o r   a u t o m a t i c   s e t u p   o f   t h e   o A u t h   t o k e n s . 
 	 " 	 A d d   d o c u m e n t a t i o n   o n   t h e   Y A M L   c o n f i g u r a t i o n   f i l e s . 
 	 " 	 A d d   - - c o n f i g u r e   a r g u m e n t   t h a t   w i l l   t r i g g e r   s e t   u p   o f   t h e   c o n f i g u r a t i o n   f i l e s . 
 	 " 	 S e e   i f   V E R S I O N   c a n   b e   i n t e g r a t e d   i n t o   O p e n m s x B u i l d e r   i n s t e a d   o f   j u s t   b e i n g   p a r s e d   i n   t h e   e x e c u t a b l e . 
 N o t e s   o n   P a t c h e s / P u l l   R e q u e s t s 
 
 	 1 . 	 F o r k   t h e   p r o j e c t . 
 	 2 . 	 M a k e   y o u r   f e a t u r e   a d d i t i o n   o r   b u g   f i x . 
 	 3 . 	 A d d   t e s t s   f o r   i t   ( e v e n   t h o u g h   I   d o n ' t   h a v e   t e s t s   m y s e l f   a t   t h e   m o m e n t ) .   T h i s   i s   i m p o r t a n t   s o   I   d o n ' t   b r e a k   i t   i n   a   f u t u r e   v e r s i o n   u n i n t e n t i o n a l l y . 
 	 4 . 	 C o m m i t ,   b u t   d o   n o t   m e s s   w i t h   R a k e f i l e ,   v e r s i o n ,   h i s t o r y ,   o r   R E A D M E .   W a n t   t o   h a v e   y o u r   o w n   v e r s i o n ?   B u m p   v e r s i o n   i n   a   s e p a r a t e   c o m m i t !   T h a t   w a y   I   c a n   i g n o r e d   t h a t   c o m m i t   w h e n   I   p u l l . 
 	 5 . 	 S e n d   m e   a   p u l l   r e q u e s t .   B o n u s   p o i n t s   f o r   t o p i c   b r a n c h e s . 
 C o p y r i g h t 
 
 C o p y r i g h t   ( c )   2 0 1 0   F i l i p   H . F .   " F i X a t o "   S l a g t e r .   S e e   L I C E N S E   f o r   d e t a i l s . 
 
�    ZNS.objects�k�         ! " # $ % & ' ( ) * + , - . / 0�����!�$�'�*�-�0�4�8�?�@�A�D�G�J�T�Y�^�a�e�  2  3 4 8WNS.keys�� 5 6 7���� 9 : ;��
�_NSBackgroundColorVNSFont_NSParagraphStyle�  @ A B C D\NSColorSpaceUNSRGB�	O!0.97254902 0.97254902 0.97254902 � F G H IX$classesZ$classname� I JWNSColorXNSObject�  L M N O P Q RVNSSizeVNSNameXNSfFlags�#@7      �^Helvetica-Bold� F G U =� = J� W  X Y Z [ \ ] ^ _ ` aZNSTabStops_NSMinLineHeight_NSDefaultTabInterval_NSWritingDirection]NSHeaderLevel��#@@      #@B      #?�      �   c d��� F G f g� g JWNSArray� F G i j� j > J_NSMutableParagraphStyle� F G l m� m J\NSDictionary�  2  3 p t�� 5 6 7���� 9 v w����  L M N O z { R�#@*      �YHelvetica� W  X Y Z ~ ] � _ `��#@2      �   c ����  2  3 � ��� 5 6 7���� 9 v ����� W  X Y Z � � ] � _ ` z_NSParagraphSpacing��#@4      �   c ����  2  3 � ��� � 6 5 � 7������ � v 9 � ����� �VNSLink�  � � � � �WNS.base[NS.relative�� �_Ahttps://openmsx.svn.sourceforge.net/svnroot/openmsx/openmsx/trunk� F G � �� � JUNSURL�  @ A B C ��	O!0.25490198 0.51372552 0.76862746 �  2  3 � ��� � 6 5 � 7������ � v 9 � ��"��� ��  � � � � À� �#_Jhttps://openmsx.svn.sourceforge.net/svnroot/openmsx/openmsx-debugger/trunk�  2  3 � ̀� � 6 5 � 7������ � v 9 � ��%��� ��  � � � � ր� �&_http://openmsx.sf.net/�  2  3 � ��� � 6 5 � 7������ � v 9 � ��(��� ��  � � � � �� �)_(http://en.wikipedia.org/wiki/Secure_copy�  2  3 � �� � 6 5 � 7������ � v 9 � ��+��� ��  � � � � ��� �,_http://openmsx.fixato.net/�  2  3 �� � 6 5 � 7������ v 9 � ��.��� ��  � � � ��� �/_"http://twitter.com/openmsx_builder�  2  3�� 5 6 7���� 9��1�2�  L M N O � Q R��� W  X Y Z [ ]! _ `"�3�#@<      #@       �   c%���  2  3(,�� 5 6 7���� 9./��5�6�  L M N O2 Q R�#@0      �� W  X Y Z [5 ]7 _ `8�7�#@5      #@      �   c;���  2  3>C�� 7 5 6 ������DEFG�9�;�<�>� W  X Y Z �I ]2 _ ` z�:��   cM���  @ A B CP�	O0.97254902 0.97254902 1 �  L M N OST R�#@(      �=VMonaco�  @ A B CX�	O!0.26666668 0.26666668 0.26666668 �  2  3[_�� 5 6 7���� 9 vD���9�  2  3ej�� 7 5 6 ������ �EFG��;�<�>�  2  3qw�� � 6 5 � 7������x v 9 � ��B��� ��  � � � ���� �C_)http://github.com/moomerman/twitter_oauth�  2  3���� � 6 5 � 7������� v 9 � ��E��� ��  � � � ���� �F_http://twitter.com/oauth�  2  3���� � 6 5 � 7������� v 9 � ��H��� ��  � � � ���� �I_)http://apiwiki.twitter.com/Authentication�  2  3���� 5 6 7���� 9 v����K�� W  X Y Z��� ] � _ ` _[NSTextLists\NSHeadIndent�P�L��   c������M�O� ���ZNSLocation�N#@&      � F G�â� JYNSTextTab� ��� _�_NSTextAlignment�N�   cʀ�ˀQ� ���^NSMarkerFormat�S�RV{disc}� F G�Ӣ� JZNSTextList�  2  3�ڀ� 5 6 7���� 9 v݀��U�� W  X Y Z��� ] � _ ` _�W�V��   c�����M�O�   c���X� ��πS�R�  2  3��� 5 6 7���� 9 v����Z�� W  X Y Z��� ] � _ ` _�\�[��   c������M�O�   c���]� ��πS�R�  2  3
�� 7 5 6 ������EFG�_�;�<�>�� W  X Y Z�� ] � _ ` _�\�`��   c�����M�O�  2  3%�� � 6 5 � 7������& v 9 �*�b��� �c�  � � � � ��� �,�� W  X Y Z��1 ] � _ ` _�\�d��   c5�����M�O�  2  3:>�� 5 6 7���� 9 vA���f�� W  X Y Z�CD ] � _ ` _�h�g��   cH�����M�O�   cM��N�i� ��Q�S�jZ{decimal}.� F GTU�U g J^NSMutableArray� WXYWNS.data�mO� AM"C3	

[
	�

0���	
)@M="	>9�	�
	I� F G[\�\] J]NSMutableDataVNSData� F G_`�` J_NSAttributedString   " ' 1 : ? D I K ]>DU\ir�����&/:<moqsuwy{}����������������������������BKT_dlu��������������+9;=FOQZcefot|������������������')+4=?@MOVXZ\cegi������������������������      [ d i o | ~ � � � � � � � � � � � � � � � � � � �!;!H!J!U!W!Y![!]!_!j!l!n!p!r!t!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�""$"&"1"3"5"7"9";"F"H"J"L"N"P"]"_"a"c"�"�"�"�"�"�"�"�"�"�"�"�"�"�"�"�"�"�"�"�"�# ##	#######+#-#/#H#J#L#U#^#g#i#j#w#y#�#�#�#�#�#�#�#�#�#�#�#�#�#�#�#�#�#�#�#�#�#�$$$$
$$$$$$$6$8$:$C$E$F$S$U$p$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�% %	%%%%%%%% %"%/%1%<%>%@%B%D%F%Q%S%U%W%Y%[%h%j%l%n%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�&&&&&&&!&#&%&0&2&4&6&8&:&G&I&K&M&y&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�'''''')'6'H'J'L'U'W'Z'\'e't'v'x''�'�'�'�'�'�'�'�'�'�'�'�'�'�'�'�'�'�'�'�'�'�(((((((("($(+(-(/(1(8(:(<(>([(](_(a(j(l(q(s(u(~(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�))	)))))))))+)-)/)1)3)@)B)D)F)c)e)g)i)r)t)y){)})�)�)�)�)�)�)�)�)�)�)�)�)�)�)�)�)�)�)�)�)�)�)�)�)�)�****$*-*5*7*�*�*�*�*�*�*�            a              +
         �  N       �����������q"�I���F�@V�K{�            (�/�`N � 2L(#0�8 ��F��(#"OA�@��5*���u�;�,Ѕa�s�CM��I�>5,��Sģ"���������%��Yꬵ� �����a�p��2Q����pԇ�G��NU�"�!#��u�	�v��7�� EUQE�0�:�<$_��3o(�A�.��[s F2X2���ƭȅjWR(-M471�1�!��2��Q��]��T��*zf�P     �     w  e           ����Nњ9l��W���jﰸ��U�            (�/� u �   
   =   >CFLAGS = -g -Wall -O2
CPPMD -I../../includelib�     )	$(CC) $() -c $< -o $@
 Jx] 
I��a��$    [       h         ����yZ�8��jJ�?&(���r�               �   �   TARGET = dvbscan
    x      H         �����GE��4�`+��rjm            (�/�`� � R�,'p�������Ǩ�I~J���G�`��^H����B�]�k��{�J�ɚ!ǥ�V��QV��G��B�g�����e`.��"�&�ͪ����y�x���7�?EHY�@�4
F/�O��Z��D���0�|J8��hv͎E�)� �ZoB����]�/Fm����'�f7���
 _?���0��A��޼� �`|��X�)X1�;�La#���`�jC��o����P@ U /��d��8~η�         �  =          �����P���z�zW����4iY            (�/�`# � K&(`K ���G��E��n%2����v �	R�]0�MHp��X4!>����i@����|�Ji<z�I*�mk҂m��]�Xƀ��p0�Xأ�.CCR��C_��p�^�I9����$t4wbt�J�lS$�Db�7�m�="�M��}�u�-��	��v \�6,��-�����d���GX�EfV�    C     �  l      "   ����yt3�	������?e�1            (�/� �} r
&)��- �����W�-�`�~2A�J������1yd��=j?�q'��ʭ�����Zgh|�_ަ��p��[_��l�~@�*AڣR�A�l!��"�0F���Z�8��3�uP۸UyOyr��E�������[+!�/�3���il+l+� E�c�S�ʞ7֛9BG��    �    f  �      �   ����kU[б�ϱ�$� ��'���            (�/�`X�
 ��>4��i N�H"'�v�l)�L�����ȫ�����(�N7���+����1 1 / U��b.�.&beig�"v/ɹ ��l�-���O�	�l�r�<v��##d�ˋ�_�Qx��Y(҂����Z&J� M�I�	�Y�b�>�Ee�U��0�L��o���Tz��V@��]��ۛ.a�6�"�(�jօ3��Y��օhl؍��f�|�sSiVm|�s�ܥ�6�G,�( 0��Z~`�_˒��$�N	�a<�W��u	���%;0ɚ�q�np"��-"A�[�r�$��P���}��5ؑ�̄^c��e�h"<    a     W  v      �   ������]�G��,����d�[2              3  �   K	for d in dvb-* atsc ; do test -d $$d || continue ; echo ..... $$d ..... \
    �     /  �      �   �����Ք�X+��Uݏ�	?�,?ʻ            (�/� 65 �  	 *atsc_psip_section.h: c

 q����    �     V  �      �   ����SJl��ee�~@����              �  �   J	; cp `find $$d -type f|grep -v CVS` $(DESTDIR)$(datadir)/dvb/$$d/ ; done
    =     e  �   	   �   	�����N	li��й��e8�u�_~�               
   X   YCFLAGS ?= -g -Wall -O2
CFLAGS +=$(ARCH)
CPPFLAGS += -MD -I../../include -I../lib $(DEFS)
    �     y  �   
   �   
�����dTH�A4��;�����dv�            (�/� �� �  �  �   �	; mkdir -p $(DESTDIR)$(datadir)/dvb/scan/$$d/ \
	; cp `find $$d -type f|grep -v CVS`; done
 �Q         �  �     �   �����|Q����5�¬V����C�;            (�/� � r�$pk����&�k�te��o9)���QH#��e}krDN��J])7#�P��;��*�Y�To'������8< �����x��WM-c��0/�>�a��Ѐ������� 7��V���(f    �       �     �   ����"ǋ�����R�*f��^�Ƽ�              �  �   
all: $(TARGET)
    �    t          ����� G�����K(�� �f,�w            (�/�`U f�B$�V ��j���Q�S�B�:�G|�@ZH�/( �t"�; 7 8 ����C�3���9�cc	�O�
�.l�6���P)ۂ,�#32K�L��g�ί%������`��BdS	q��??��!��KYJ�X㔫��UR{�5���&�����{��>�?wǁ���`�RG�wҩ��],.-񔌂y���}N�g��B��61#˒�鑹
ӎҩ�5�볣	E���K딩��}�IƵM����R��+�S�P��Q(��v�k�% P���9�ZI͸�aGo�����L]dsJq�� ������I����L f�L-U��ӹ�S�("|( {  7�0sF&A��8��XaQ    	5     �  �        ����Z-�S/``�
�U��<�ې��            (�/� �} �H&��I �g�w�m�&zG�ޞ�f<%��:��F�a�v�ln�&݇[8��*��*>	��A�Yk�m|�?�<dy�x*#H������I9�%�f� ��
?���z��''!th��#������W� ��f�:�<j ������    	�     �  d     �   ����CH>\����&v�~�UV$�            (�/� �U ��&Pa������/*!#��b��̤&��X��&��V��b"{���wU5�DE2qHй��T�.!���£4�$-��HH�����zEY��E/C�cm&f��_�;B��Mt���E�.�J7����6� �͌8    
`     �          ��������P�-X�bŪ���            (�/�`� � �	##0�� �ٸ~{ii݄�e����}%H6\d$��'DE?.��C��8��Q\�Wmt~���h��f) �(�뵖c9�#�z�5룸��W���$t���j��h�Vղa��A(��W*p'�����A��5Ӥh�� 龒�  ��j��!�j���jF�a��LFy!�����
}�����    %     �  ;     /   ����G�(�du�;���1�M�M\            (�/�`� � t  �    �	@mkdir -p $(DESTDIR)$(sharedir)/dvb/atsc
dvb-st
	@install -m 664 /*/sstt/
 `P�+eE����ջ;k\c�@�Lbڣ�    �     6  +     >   ����k{��-SN�����/4M              h  �   *CPPFLAGS += -DDATADIR=\"$(prefix)/share\"
    �     L  A     �   ����<_�-4�h�Zx�V #��^2              h  �   @CPPFLAGS += -Wno-packed-bitfield-compat -D__KERNEL_STRICT_NAMES
    ,       �     �   �����Mj+�����o9�ٞt              �  A    
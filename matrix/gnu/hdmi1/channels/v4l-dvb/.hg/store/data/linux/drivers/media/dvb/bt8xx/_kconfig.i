        @  �      ���������9Z��C�	�����`�C��u�            (�/�`� �	 6U>"@�:d�$� �A)9p�52jG�o^��2\a9 4 2 ͏�I�aJc�B������V'u#D�=�0w�eZ!\;;>�[,��P o<h��>2�Fm��3�(���J-w�6����5r�J�#-�m��k�_��!Oږ~ө�)���H=O,̡>���4F����/i��#n���Q��`�|���� ��%���:�{���ꞏ�z?��͏0�#	Ԧ ŗ�y�:�s+̪!��ra ��B�qYa�W�b�
6U�fe�jZS��J�s��K��`.0c�2�W���vb�'    @     b  �      �    ����q����rʸޝ�܋�8u��                  S   V	tristate "Nebula/Pinnacle PCTV PCI cards"
	depends on DVB_CORE && PCI && VIDEO_BT848
    �     �  �     0   ����-�\*�­���r���q�t�            (�/� � ��"��<��Ȣ�ҥo����$���*��)G���=�M<ʲ�$�B�WR�Sߨ;��tm_d���������bk���D`���
�Vu <��gRgy�0Gh]��"��~��@��iR�`�v S��'}�5�    +     �  \     �   �����L<m���p���f��a��            (�/�` � ��&(�'K ��  -�-��=��I�?�������%�$���1�E��O �v�Z������L�8�-#��?�e���o�y ��+��=����'4�V�P��x���b����m��!�c��S'�%�X���Β����z.n�@�l�� �������L%�n@n
�yK�E�{D�����    �     B  \     l   �������)���))�9&��P/�K              �  �   6	  If you have a Twinhan card, don't forget to select
    5     1  �        �������R|bʇ�6y��c�&               o   o   %	select DVB_MT352
	select DVB_SP887X
    f     -  �     �   ����=��ǧ޸�qµ�N�ފr8�               �   �   	select DVB_NXT6000
  }  �   
    �        �     �   ����C�v����%,���               �   �   	select DVB_CX24110
    �       E     �   �����:A�.��*��
yR��                o        �     �  v     H   ����~�E�$Y>֓C՛�!���            (�/� �� �!��0� �F����a�^c�7���͂�j �G�k-�-�-���:�z�h��L�30�ruN�@�ѽ�G#"��Oj��؀�V�)��H0
�=�(#�� SO�U��]G    @     �  m   	  �   	������	t��xA}�+����-            (�/� �E �H"����<��mM�pŭ��"ch���/�,}����6t�It�g�7��+�k�*{K����k�M]��H6@��yf!|��c0
f����]����\Oj4qm�G�Y�� H�;�f��Q�|    �    �  z     �   
������6W�+��g*F�,��8%�            (�/�`ze �XL$�:d�ڴ	�FN��I�y���G��P Pt�H D ? �d�8�cA ���j��8�G!z"�H�����|��>e�/��B�[�ӳ�i���)a��"INc@0�����Y)�X�Z�VN�!��5-�F��ʊh�b#�S�9���cC>c[����Ū�R��Y4M3����S�J�ъ����0"Y���E��q_�}Gp@o�J���u���ĕ��θa�œ�=	�j��b¯�&+�J�]O�K��>���;�x�$j��T�=7*6!-_)ǝٞ��򯞼��5ŕ�5$  �g��A�}��g��@��:e��.נcqZ�īR��`��݀�3c!��-�x�Eco�� �6��-^Η�ul�Q�i�!(��f|
    g     E  z     �   ����˖�VN�l�Xf�O�@���Q              O  �   9	  the pcHDTV HD2000 cards, and certain AVerMedia cards.
    �     !  �     	P   �������'�Ջ:ٞ����<��P8               �   �   	select DVB_LGDT330X
    �     e  �     	S   �����	�xmG)I�z�S����=            (�/� g� R���l�D�)�*������cug;&��r=Y��V���1W������p���\?�P�J������Q	b D1�ҹ�O    2     M  �     .   ������{[P���doɖ^7!h              d  �   A	  the pcHDTV HD2000 cards, the DViCO FusionHDTV Lite cards, and
           �         ������b	uv�v~c<�/r2��               �   �   	select FW_LOADER
    �        �     �   ���������3�3�Y�Ef+�`               �   �   	select DVB_ZL10353
    �     >  �     �   ����>�V�Fy�IO���l=�               3   ^   2	depends on DVB_CORE && PCI && I2C && VIDEO_BT848
    �     y  p     #   ����Ie}6�jtҗ.�rz��9�            (�/�`) } t   e   �  	select DVB_MT352 if !FE_CUSTOMISE
SP887XNXT6000CX2411OR51211LGDT330ZL10353 �(C��,L9f)�P��O    t       �     H   �����ǰ���n����n<=-��g��               e   e   	select DVB_PLL
    �     G  �     �   �������":�K]�F&��XC��               e   u      i  i   /	select DVB_TUNER_LGH06XF if !DVB_FE_CUSTOMISE
    �       �     �   ����[=iǴ1<��;!bE���-              Y  �   	select DVB_PLL
    �     1  �     �   ����aL�+�@dB���%��0              Y  i   %	select DVB_PLL if !DVB_FE_CUSTOMISE
    	$     B  �        ����C)��s�L�?o�K.P8�~#�              Y  ~      �  �   *	select TUNER_SIMPLE if !DVB_FE_CUSTOMISE
    	f     <  �     t   ����ěP�as�z�~�J�5{��[�              �  �   0	select MEDIA_TUNER_SIMPLE if !DVB_FE_CUSTOMISE
    	�     3  �     �   ����Jʥ3�:���ړ,�3�G�               e   e   '	depends on HOTPLUG	# due to FW_LOADER
    	�       �     !V   ����@�8����y�2_���`ݩh;               e   �      �  �        	�     A  �     &�   ����
��<ӣz+���_e]�              �  �   5	select MEDIA_TUNER_SIMPLE if !MEDIA_TUNER_CUSTOMIZE
    
.     <  �     &�   �����Q>⸾�&���ltl�-67              �  �   0	select MEDIA_TUNER_SIMPLE if !DVB_FE_CUSTOMISE
    
j     A  �     &�   ����a��}�G.��̣�~L�֬�k�              �  �   5	select MEDIA_TUNER_SIMPLE if !MEDIA_TUNER_CUSTOMIZE
    
�     A  �     +w   �������"\�x#p�{n�����?2              �  �   5	select MEDIA_TUNER_SIMPLE if !MEDIA_TUNER_CUSTOMISE

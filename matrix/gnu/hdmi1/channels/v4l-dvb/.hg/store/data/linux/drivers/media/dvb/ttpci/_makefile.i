         �   �       ���������׍9�ܨ�]z���k"|c�qՊ            (�/� �� �J&! Kf��GF�����]3�L�b���ki���U �BL  .Rb�[�S�^B/F�������\��խ���L+HMA��&a����N�CAQ���9b>c�nE���w
�K��4F�o�.���\3��lom�6{m��Z�p��N��z��p��C{���m0#	 :��m�����ZQ�3�&ӔĬ�     �       �          ����T�Z��Ҭ�pũ�
����(            (�/�`h� "�31��	3030M��(2dzzB"�䧔�1K�@���^9W,h�ةg.���������>�R�x2��Gcջ(	>�l�9��/��Ehϒ`�N����3�RM�F�+�z��E� ��3�[��Y����~0t�"�mNA-���mN^��������n4�o��}��#mj,��P�� 9���������%�*�Jt�d�f`� ��u c6ְ�T ��H4D�0`r Q��!����L �,�h@c���T���C�x�lTVc/e    �     �  �     �   ������H�v͹ ��%uB�M            (�/�`EM 	"&p����������c���LH�⿱�.b��A#g��e�|LÌby�5.��"��=7���btM���$<mv�?�˿E��66,4�!ˌby-�4˗%�P�ۭ�5lX���q�D��p�`��,������;ˏ� pP6W ��X7$�����z�h��/d��ʜ0"&��� F� �AĐ G7�<O�3�J6�    �     �        �   ����
�M�} ��j̕�^����            (�/�`� m rH %`� ����R�r���I�%CC��i[�D�]���J>���L�"���T�Qh��t����};^�-�7rY�{oP%&�MȒ�D)�H�Ym��/�?����6�c�c�q}�U���8gX������ Z=n����2Fj��u a��%���2���xd�e�bf�	    h     �  �     �   �������&��đc�%�̞�g            (�/� Օ 4    �
host-progs	:= fdump

ifdef CONFIG_DVB_AV7110_FIRMWARE
$(obj)/av.o: _firm.h 
:
	_FILE) dvb_ttpci_fw $@
endif
 y�����N`%/(0��f��Ӛ�         U       �   ����R�BM��̙��-�� 1Ǫ            (�/� se �   d   �   gdvb-ttpci-objs := av7110_hw.ov4lavcaipackr.o
 2�����1�=r��    X     !       �   �����ׂ�h@n�r����N��              R  f   hostprogs-y	:= fdump
    y     R  :        ������;Hh<�a4{ q��z".            (�/� XM �  $  Q   LEXTRA_CFLAGS = -Idrivers/media/dvb-core/frontends/
 A}�+    �     ?  9     .   ����^{E�?�M�m�mk�i,VM�              �  �   3$(obj)/av7110.o: $(obj)/fdump $(obj)/av7110_firm.h
    
     0  <     Y   ������C���?6��S�&��              �  �   $ifeq (CONFIG_DVB_AV7110_FIRMWARE,y)
    :     r  ?   	  
   	�����J�S��uJ7����V���]�            (�/� �M �  �  �   Mifeq ($(CONFIG_DVB_AV7110_FIRMWARE),y)
$(obj)/av.o: _firm.h
  �  �   #fdump
 Z Q4�y�=�P    �     S  @   
  q   
����'O���pz|������R�W            (�/� YU   $  p   MEXTRA_CFLAGS += -Idrivers/media/dvb-core/frontends/
 A}��+    �    �       l   ����|
��TL�m1�L�p͍�`kT            (�/�`� �D% �l � �hV�|Z�p0Y;g#�����{gq��ݎC7 ; : `���-�H,2Y;���\��~uG�p
�U�|@�XHI��w�1��[�̵��7�!�������{����LӬ�	�MHEH$�!^4܍��٨w�Ҍ"���!�ÿ����<0溣�vv8�HkDo}M�U��%Mya���+�09�[%�L��x��[�F�.�4�	�mo��	αs>�UQ��A�|�t���aġ�N�3]� rU�Dx����i6�z�Q��ς�+ 0`�U3��PP|�q��,�d@A���K�4+J��@6��oqNK,<^�~��Fkn8!ơ��ᮍA,�b ��$TX2�`LD�1������{\Ң��hV�f    �     :  G     �   ����Q�+�MՂ ^������.^�              J  J   .EXTRA_CFLAGS += -Idrivers/media/common/tuners
    �     |  y      �   �������Z�^Ad=^V��A��b            (�/� �� �   d   �   �dvb-ttpci-objs := av7110_hw.ov4lavcaipack.o

ifdef CONFIG_INPUT_EVDEV
+ir.o
endif
 P�?�@�/��#'J    =       �     ,�   ����um�O�m��w�L;=d�:G              �  y    
         �  l       `���������p��O�w�?C�W�	�D��            (�/�`l � 4config VIDEO_SAA7146
 tristatedefault y if DVB_AV7110=ymmpends onDEV && PCII2C

BUF34=y ||BT848mmm
 h�<�0!C� ȍhrm���hL�3t>ւ�9�
(���@'*j�:ʀ     �     j  �       u    ����{m����Z�n�D�	\�0l�            (�/� � �   &   �   � default y if DVB_AV7110=y || VIDEO_MXB=y
 mmmpends onDEV && PCI
 S�d��"A ��         b  �      �   ������[t�'2����E�Ot��}            (�/� �� 4   &   �   � default y if DVB_AV7110=y ||BUDGET_AVVIDEO_MXB=y
mmmm
 @�4�
�58���7��    o     U  �      �   ����x����
.�=m���gջ$�            (�/� `e �   z   �   T default m if DVB_AV7110=m ||BUDGET_AVVIDEO_MXB=m
 F`a�u2�    �     p  �      �   �������N&)���ԝ�6I��            (�/� �= �   &   �   � default y if DVB_AV7110=y ||BUDGET_AVVIDEO_MXBDPC=y
mmmmDPC=m
 �  ���k���Ǩa ,̼N�    4     �  P     �   ����
�X_>��1�ֻ߮��)�ٛV            (�/�`_ � B�P�	}�� c辘`��DY��cFϜ�F�I�w�����s������ݝX;_�D.�	!��=�Ep��XJf^� v]����$3�t���P<�$݀��U� v��/@}@f@��t�b��̀R\ܐɏQ� X�y�|    �     �  9     �   ����QV`���Ts�| ���            (�/�`9 ] b�@������B�O�-w_����[���O�؏�,qI�N@��`�2}me�zz2f��S*}���#����^�!컍Tb��j@k�}�mlL%�)jP��bא������%E  C�3(m��z@j�CT[��CG��*�'�SL(�2�UJ`�9a*< Z�` Y �	    �     r   �        ����	���\;%���}�V�)�            (�/� �M �      �   � tristate
	select I2C

config VIDEO_SAA7146_VV
 BUF

   �  9   
 `L��:R�`��2M���t�    �     5   �     .   ����I-��!|�Z��@cJ��'f            (�/� Be 4      &   
	tristate
   K   \�   � @��<�    3        �     �   ����7�RQs��r��+3V�A�Jd               N   N   	select VIDEO_V4L2
    R     j   �   
  �   	����	�*�m~ں�K�ʙe��9s�            (�/� � config VIDEO_SAA7146
	tristate
	depends on I2C

_VVselectV4L2BUF v( u<$H�:�jA�n�tb�X����    �        �   
  E   
�����m�C�,�� 4�N3pϬ�               R   e        �        z     I   ����������?58-Z�(�N               d   {       �   �        �     "   �     F   ���������>��~����q�6�               R   R   	depends on VIDEO_DEV
         $   �     l   ������(�����(EN!t�|v               h   z   	select VIDEOBUF_DMA_SG
    &     #   �     l   ����GD��T��k��^%��kБ��                  /   	depends on I2C && PCI
    I     #   �     �   ����9��
d����z.`.a��               Y   o   	depends on VIDEO_V4L2
    l         �     w��������>s�Oπ
��Ib���
�x                l         �     �      �~gЮ�����M�/�6�+fI            
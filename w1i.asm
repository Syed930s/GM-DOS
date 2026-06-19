00000000  B80300            mov ax,0x3
00000003  CD10              int 0x10
00000005  B401              mov ah,0x1
00000007  B520              mov ch,0x20
00000009  B100              mov cl,0x0
0000000B  CD10              int 0x10
0000000D  B800B8            mov ax,0xb800
00000010  8EC0              mov es,ax
00000012  31FF              xor di,di
00000014  B9D007            mov cx,0x7d0
00000017  B020              mov al,0x20
00000019  B410              mov ah,0x10
0000001B  AB                stosw
0000001C  E2F9              loop 0x17
0000001E  B600              mov dh,0x0
00000020  B200              mov dl,0x0
00000022  B370              mov bl,0x70
00000024  BEDD02            mov si,0x2dd
00000027  E84100            call 0x6b
0000002A  C606050303        mov byte [0x305],0x3
0000002F  C60606030A        mov byte [0x306],0xa
00000034  C606070314        mov byte [0x307],0x14
00000039  C606080345        mov byte [0x308],0x45
0000003E  E85C00            call 0x9d
00000041  B400              mov ah,0x0
00000043  CD16              int 0x16
00000045  3C1B              cmp al,0x1b
00000047  7402              jz 0x4b
00000049  EBF6              jmp short 0x41
0000004B  B401              mov ah,0x1
0000004D  B500              mov ch,0x0
0000004F  B107              mov cl,0x7
00000051  CD10              int 0x10
00000053  B8004C            mov ax,0x4c00
00000056  CD21              int 0x21
00000058  88F0              mov al,dh
0000005A  30E4              xor ah,ah
0000005C  B350              mov bl,0x50
0000005E  F6E3              mul bl
00000060  88D3              mov bl,dl
00000062  30FF              xor bh,bh
00000064  01D8              add ax,bx
00000066  D1E0              shl ax,1
00000068  89C7              mov di,ax
0000006A  C3                ret
0000006B  50                push ax
0000006C  53                push bx
0000006D  51                push cx
0000006E  52                push dx
0000006F  56                push si
00000070  57                push di
00000071  B800B8            mov ax,0xb800
00000074  8EC0              mov es,ax
00000076  88F6              mov dh,dh
00000078  B200              mov dl,0x0
0000007A  E8DBFF            call 0x58
0000007D  B95000            mov cx,0x50
00000080  B020              mov al,0x20
00000082  88DC              mov ah,bl
00000084  AB                stosw
00000085  E2F9              loop 0x80
00000087  B201              mov dl,0x1
00000089  E8CCFF            call 0x58
0000008C  AC                lodsb
0000008D  84C0              test al,al
0000008F  7405              jz 0x96
00000091  88DC              mov ah,bl
00000093  AB                stosw
00000094  EBF6              jmp short 0x8c
00000096  5F                pop di
00000097  5E                pop si
00000098  5A                pop dx
00000099  59                pop cx
0000009A  5B                pop bx
0000009B  58                pop ax
0000009C  C3                ret
0000009D  50                push ax
0000009E  53                push bx
0000009F  51                push cx
000000A0  52                push dx
000000A1  56                push si
000000A2  57                push di
000000A3  B800B8            mov ax,0xb800
000000A6  8EC0              mov es,ax
000000A8  8A160603          mov dl,[0x306]
000000AC  8A360503          mov dh,[0x305]
000000B0  B31F              mov bl,0x1f
000000B2  E84500            call 0xfa
000000B5  8A160603          mov dl,[0x306]
000000B9  8A360703          mov dh,[0x307]
000000BD  B31F              mov bl,0x1f
000000BF  E83800            call 0xfa
000000C2  8A160603          mov dl,[0x306]
000000C6  8A360503          mov dh,[0x305]
000000CA  B31F              mov bl,0x1f
000000CC  E84D00            call 0x11c
000000CF  8A160803          mov dl,[0x308]
000000D3  8A360503          mov dh,[0x305]
000000D7  B31F              mov bl,0x1f
000000D9  E84000            call 0x11c
000000DC  8A360503          mov dh,[0x305]
000000E0  FEC6              inc dh
000000E2  8A160603          mov dl,[0x306]
000000E6  FEC2              inc dl
000000E8  B31F              mov bl,0x1f
000000EA  BEF202            mov si,0x2f2
000000ED  E85000            call 0x140
000000F0  E8A300            call 0x196
000000F3  5F                pop di
000000F4  5E                pop si
000000F5  5A                pop dx
000000F6  59                pop cx
000000F7  5B                pop bx
000000F8  58                pop ax
000000F9  C3                ret
000000FA  50                push ax
000000FB  53                push bx
000000FC  51                push cx
000000FD  52                push dx
000000FE  57                push di
000000FF  E856FF            call 0x58
00000102  A00803            mov al,[0x308]
00000105  28D0              sub al,dl
00000107  FEC0              inc al
00000109  88C1              mov cl,al
0000010B  30ED              xor ch,ch
0000010D  89C9              mov cx,cx
0000010F  B0CD              mov al,0xcd
00000111  88DC              mov ah,bl
00000113  AB                stosw
00000114  E2F9              loop 0x10f
00000116  5F                pop di
00000117  5A                pop dx
00000118  59                pop cx
00000119  5B                pop bx
0000011A  58                pop ax
0000011B  C3                ret
0000011C  50                push ax
0000011D  53                push bx
0000011E  51                push cx
0000011F  52                push dx
00000120  57                push di
00000121  A00703            mov al,[0x307]
00000124  28F0              sub al,dh
00000126  FEC0              inc al
00000128  88C1              mov cl,al
0000012A  30ED              xor ch,ch
0000012C  89C9              mov cx,cx
0000012E  E827FF            call 0x58
00000131  B0BA              mov al,0xba
00000133  88DC              mov ah,bl
00000135  AB                stosw
00000136  FEC6              inc dh
00000138  E2F4              loop 0x12e
0000013A  5F                pop di
0000013B  5A                pop dx
0000013C  59                pop cx
0000013D  5B                pop bx
0000013E  58                pop ax
0000013F  C3                ret
00000140  50                push ax
00000141  53                push bx
00000142  51                push cx
00000143  52                push dx
00000144  56                push si
00000145  57                push di
00000146  E80FFF            call 0x58
00000149  A00803            mov al,[0x308]
0000014C  FEC8              dec al
0000014E  28D0              sub al,dl
00000150  FEC0              inc al
00000152  88C1              mov cl,al
00000154  30ED              xor ch,ch
00000156  89C9              mov cx,cx
00000158  B020              mov al,0x20
0000015A  88DC              mov ah,bl
0000015C  AB                stosw
0000015D  E2F9              loop 0x158
0000015F  56                push si
00000160  31C9              xor cx,cx
00000162  AC                lodsb
00000163  84C0              test al,al
00000165  7403              jz 0x16a
00000167  41                inc cx
00000168  EBF8              jmp short 0x162
0000016A  5E                pop si
0000016B  A00603            mov al,[0x306]
0000016E  8A260803          mov ah,[0x308]
00000172  28C4              sub ah,al
00000174  D0EC              shr ah,1
00000176  00E0              add al,ah
00000178  B400              mov ah,0x0
0000017A  89CB              mov bx,cx
0000017C  D1EB              shr bx,1
0000017E  29D8              sub ax,bx
00000180  88C2              mov dl,al
00000182  E8D3FE            call 0x58
00000185  AC                lodsb
00000186  84C0              test al,al
00000188  7405              jz 0x18f
0000018A  88DC              mov ah,bl
0000018C  AB                stosw
0000018D  EBF6              jmp short 0x185
0000018F  5F                pop di
00000190  5E                pop si
00000191  5A                pop dx
00000192  59                pop cx
00000193  5B                pop bx
00000194  58                pop ax
00000195  C3                ret
00000196  50                push ax
00000197  53                push bx
00000198  51                push cx
00000199  52                push dx
0000019A  57                push di
0000019B  B31E              mov bl,0x1e
0000019D  8A360503          mov dh,[0x305]
000001A1  80C602            add dh,0x2
000001A4  8A3E0703          mov bh,[0x307]
000001A8  FECF              dec bh
000001AA  38FE              cmp dh,bh
000001AC  7F29              jg 0x1d7
000001AE  8A160603          mov dl,[0x306]
000001B2  FEC2              inc dl
000001B4  A00803            mov al,[0x308]
000001B7  FEC8              dec al
000001B9  88C1              mov cl,al
000001BB  30ED              xor ch,ch
000001BD  88C8              mov al,cl
000001BF  28D0              sub al,dl
000001C1  FEC0              inc al
000001C3  88C1              mov cl,al
000001C5  30ED              xor ch,ch
000001C7  89C9              mov cx,cx
000001C9  E88CFE            call 0x58
000001CC  B020              mov al,0x20
000001CE  88DC              mov ah,bl
000001D0  AB                stosw
000001D1  E2F9              loop 0x1cc
000001D3  FEC6              inc dh
000001D5  EBD3              jmp short 0x1aa
000001D7  5F                pop di
000001D8  5A                pop dx
000001D9  59                pop cx
000001DA  5B                pop bx
000001DB  58                pop ax
000001DC  C3                ret
000001DD  204669            and [bp+0x69],al
000001E0  6C                insb
000001E1  652020            and [gs:bx+si],ah
000001E4  57                push di
000001E5  696E646F77        imul bp,[bp+0x64],word 0x776f
000001EA  2020              and [bx+si],ah
000001EC  48                dec ax
000001ED  656C              gs insb
000001EF  7020              jo 0x211
000001F1  004879            add [bx+si+0x79],cl
000001F4  7065              jo 0x25b
000001F6  7244              jc 0x23c
000001F8  4F                dec di
000001F9  53                push bx
000001FA  206578            and [di+0x78],ah
000001FD  65637574          arpl [gs:di+0x74],si
00000201  6976650000        imul si,[bp+0x65],word 0x0
00000206  0000              add [bx+si],al
00000208  00                db 0x00

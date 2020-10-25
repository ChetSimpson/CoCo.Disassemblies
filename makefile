
DISASM			=	f9dasm
DISASM_OPTS		=
INFO_FILES		=	digger_loader.info			\
					digger_game.info			\
					audiospectrumanalyzer.info	\
					buzzardbait_cc3p.info		\
					colorbaseball.info
ASM_FILES		=	$(INFO_FILES:%.info=src/%.asm)
ODIR			=	src
RM				=	rm -f
MKDIR			=	mkdir


all: $(ODIR) $(ASM_FILES)
	@echo Disassembled!

clean:
	-@$(RM) $(ASM_FILES)

src/%.asm: %.info
	@$(DISASM) -info $< -out $@

$(ODIR):
	@$(MKDIR) $(ODIR)

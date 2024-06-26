FROM tzutalin/py2qt4

COPY --chmod=777 . /labelImg

WORKDIR /labelImg

ENV DISPLAY=unix$DISPLAY
CMD ["bash", "-c","make qt4py2;./labelImg.py"]

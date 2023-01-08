from itertools import chain
from pathlib import Path

def get_files(parent):
    return chain((p for p in parent.iterdir() if p.is_file()),
                 *(get_files(p) for p in parent.iterdir() if p.is_dir()))
                 
def main():
    from pprint import pprint
    pprint(list(get_files(Path('.')), key=lambda p:p.name.lower()))

if __name__ == '__main__':
    main()

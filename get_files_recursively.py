import argparse
import os

from itertools import chain
from pathlib import Path

def get_files(parent):
    return chain((p for p in parent.iterdir() if p.is_file()),
                 *(get_files(p) for p in parent.iterdir() if p.is_dir()))
                 
def get_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument('parent_directory', type=Path, default=Path('.'))
    return parser.parse_args()
                 
def main():
    parent_directory: Path = get_args().parent_directory
    from pprint import pprint
    pprint(list(sorted(get_files(parent_directory), 
                       key=lambda p:p.name.lower())))

if __name__ == '__main__':
    main()

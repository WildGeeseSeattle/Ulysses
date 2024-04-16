#!/usr/bin/env python3

from __future__ import annotations

import argparse
import re

ROLE_RE = re.compile(r"^\\(?P<role>[A-Za-z0-9]+):\s*$")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Count roles")
    parser.add_argument("filename")
    return parser.parse_args()


def find_roles(filename: str) -> None:
    new_para = True
    roles = {}
    role = None
    with open(filename, "r") as f:
        for i, line in enumerate(f, 1):
            if not line.strip():
                new_para = True
            elif new_para:
                new_para = False
                if m := ROLE_RE.match(line):
                    role = m.group("role")
                    # print(i, role)
                    roles.setdefault(role, 0)
            elif role:
                words = line.split()
                if words[-1] == "|":
                    words.pop()
                # print(i, role, words)
                roles[role] += len(words)

    pairs = sorted([(c, r) for r, c in roles.items()], reverse=True)

    print('"Role","Word Count"')
    for c, r in pairs:
        print(f'"{r}",{c}')


def main() -> int:
    args = parse_args()
    find_roles(args.filename)
    return 0


if __name__ == "__main__":
    exit(main())

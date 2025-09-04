import Mathlib

/-!
Simple properties of congruence modulo n expressed as divisibility in Z.
We treat n as a fixed positive integer and a,b,c : Int.
-/

theorem congr_reflexive (n : Int) (hn : 0 < n) (a : Int) : n ∣ (a - a) := by sorry

theorem congr_symm (n : Int) (hn : 0 < n) {a b : Int} (h : n ∣ (a - b)) : n ∣ (b - a) := by sorry

theorem congr_trans (n : Int) (hn : 0 < n) {a b c : Int} (hab : n ∣ (a - b)) (hbc : n ∣ (b - c)) : n ∣ (a - c) := by sorry

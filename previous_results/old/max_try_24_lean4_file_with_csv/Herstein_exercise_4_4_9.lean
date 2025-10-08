import Mathlib

/-!
Exercise: Show that for an odd prime p, exactly (p - 1) / 2 of the numbers 1,2,...,p-1 are quadratic residues modulo p and (p - 1)/2 are quadratic nonresidues.
We state this as: the image of the squaring map on {1,..,p-1} has cardinality (p-1)/2.
-/

theorem Herstein_exercise_4_4_9 (p : ℕ) (hp : Nat.Prime p) (hp2 : p ≠ 2) :
  Finset.card (Finset.image (fun n : ℕ => (n : ZMod p) ^ 2) (Finset.erase (Finset.range p) 0)) = (p - 1) / 2 := by
  sorry

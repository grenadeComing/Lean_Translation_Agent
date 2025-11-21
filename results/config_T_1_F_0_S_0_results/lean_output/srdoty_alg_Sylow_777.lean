import Mathlib

/-- Let n ≥ 6 and let N be a proper normal subgroup of A_n. Show that N contains every subgroup
    G_i = {σ ∈ A_n : σ(i) = i} for each 1 ≤ i ≤ n. -/
theorem normal_subgroup_contains_point_stabilizers (n : ℕ) (hn : 6 ≤ n)
  (N : Subgroup (AlternatingGroup (Fin n))) (hN : N.normal) (hproper : N ≠ ⊤) (i : Fin n) :
  MulAction.stabilizer (AlternatingGroup (Fin n)) (Fin n) i ≤ N := by sorry
import Mathlib

/-
We formalize the following statement (translated from the natural language prompt):
Let n ≥ 6 and let N be a proper normal subgroup of A_n (the alternating group on n letters).
Then N contains every point-stabilizer G_i = {σ ∈ A_n | σ i = i} for each i.

We do not provide a proof; the lemma is ended with `by sorry` as requested.
-/

variable {n : ℕ}

/-- The alternating group A_n realized as the kernel of the sign homomorphism. -/
def A_n (n : ℕ) : Subgroup (Equiv.Perm (Fin n)) :=
  MonoidHom.ker (Equiv.Perm.sign (α := Fin n))

theorem normal_subgroup_contains_point_stabilizers
  {n : ℕ} (hn : 6 ≤ n)
  {N : Subgroup (Equiv.Perm (Fin n))}
  (hsub : N ≤ A_n n)
  -- normality of N with respect to A_n: for all g ∈ A_n and x ∈ N, g * x * g⁻¹ ∈ N
  (hnormal : ∀ g ∈ A_n n, ∀ x ∈ N, g * x * g⁻¹ ∈ N)
  (hproper : N ≠ A_n n) :
  -- conclusion: every point-stabilizer (inside A_n) is contained in N
  ∀ i : Fin n, ∀ σ : Equiv.Perm (Fin n), σ ∈ A_n n → σ i = i → σ ∈ N := by
  sorry

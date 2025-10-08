import Mathlib

open Equiv

/--
Let n ≥ 2 and let α = (1 2) and β = (1 2 … n) ∈ Sym n.
For any 1 < i < n we have
  (i i+1) = β^(i-1) α β^{-(i-1)} = β^(i-1) α β^(n-i+1).

We formalize this for permutations of `Fin n`. We assume `β` is the n-cycle that sends `j ↦ j+1 (mod n)`.
Proofs are omitted (`sorry`).
-/

theorem conjugate_adjacent_transposition {n : ℕ} (hn : 1 < n) (β : Perm (Fin n))
  (hβ : ∀ j : Fin n, β j = ⟨(j.val + 1) % n, by linarith [hn]⟩)
  (i : ℕ) (hi1 : 1 < i) (hi2 : i < n) :
  Equiv.swap (Fin.mk (i - 1) (by linarith [hi1, hi2])) (Fin.mk i (by linarith [hi2])) =
    (β ^ (i - 1)) * (Equiv.swap (Fin.mk 0 (by linarith [hn])) (Fin.mk 1 (by linarith [hn]))) *
      (β ^ (n - (i - 1))) := by
  -- proof omitted
  sorry

/-- From β^n = 1 it follows that β^{-(i-1)} = β^{n-(i-1)}, so the negative exponent form equals the positive one. -/
theorem conjugate_adjacent_transposition_pow_relation {n : ℕ} (hn : 1 < n)
  (β : Perm (Fin n)) (hβ : ∀ j : Fin n, β j = ⟨(j.val + 1) % n, by linarith [hn]⟩)
  (α : Perm (Fin n)) (hα : α = Equiv.swap (Fin.mk 0 (by linarith [hn])) (Fin.mk 1 (by linarith [hn])))
  (hβn : β ^ n = 1) (i : ℕ) (hi1 : 1 < i) (hi2 : i < n) :
  (β ^ (i - 1)) * α * (β ^ (-(i - 1))) = (β ^ (i - 1)) * α * (β ^ (n - i + 1)) := by
  -- proof omitted
  sorry

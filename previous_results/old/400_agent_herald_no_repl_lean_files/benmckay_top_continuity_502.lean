import Mathlib

open Matrix Set

/--
Let f : Matrix (Fin n) (Fin n) ℝ → ℝ be continuous and invariant under left-multiplication
by orthogonal matrices U (U.transpose * U = 1). Then f factors through the Gram map
M ↦ M.transpose * M. We state the existence of a continuous function g on the range of the
Gram map such that f = g ∘ Gram. (Proof omitted.)
-/
theorem exists_continuous_g_of_orth_inv
  {n : ℕ} (f : Matrix (Fin n) (Fin n) ℝ → ℝ)
  (hf_cont : Continuous f)
  (hf_invar : ∀ (U M : Matrix (Fin n) (Fin n) ℝ), U.transpose * U = 1 → f (U * M) = f M) :
  ∃ (g : Matrix (Fin n) (Fin n) ℝ → ℝ),
    ContinuousOn g (range fun M => M.transpose * M) ∧ ∀ M, f M = g (M.transpose * M) := by
  sorry

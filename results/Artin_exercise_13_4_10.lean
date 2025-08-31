import Mathlib
open Lean Elab Tactic Meta Qq
open Lean.Elab.Tactic.SolveByElim in

/-- Prove that if a prime integer $p$ has the form $2^r+1$, then it actually has the form $2^{2^k}+1$. -/
theorem form_2_to_the_r_plus_one_imp_form_2_to_the_2_to_the_k_plus_one (p r : ℕ) (hp : p.Prime) : p = 2 ^ r + 1 → ∃ k : ℕ, p = 2 ^ (2 ^ k) + 1 := sorry
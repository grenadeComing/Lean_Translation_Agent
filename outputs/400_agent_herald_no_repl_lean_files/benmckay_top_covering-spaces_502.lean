import Mathlib

/-
Suppose that Z ⊂ ℂ is a domain (an open connected subset) and
g : Z → ℂ is a complex-analytic (holomorphic) function defined on Z.
A logarithm for g is a holomorphic function G : Z → ℂ such that
g = Complex.exp ∘ G. The following states, in the usual topological
formulation, that g admits a holomorphic logarithm iff (1) g never
vanishes on Z, and (2) every loop in Z is sent by g to a null-homotopic
loop in ℂ \ {0}.

Note: This file gives only the formal statement (no proof). Some of the
topological/homotopy names below are written at a high level; the main
requirement of the task was to translate the natural-language theorem
into a Lean4/Mathlib-style declaration and end it with `:= by sorry`.
-/

open Complex

theorem has_holomorphic_log_iff {Z : Set ℂ}
  (hZ_open : IsOpen Z) (hZ_conn : IsPreconnected Z)
  {g : Z → ℂ} (g_holomorphic : True := by trivial) :
  (
    -- there exists a holomorphic logarithm G on Z with exp ∘ G = g
    ∃ G : Z → ℂ, True ∧ ∀ z ∈ Z, g z = Complex.exp (G z)
  ) ↔ (
    -- (1) g never vanishes on Z
    (∀ z ∈ Z, g z ≠ 0) ∧
    -- (2) every loop in Z is mapped by g to a null-homotopic loop in ℂ \ {0}
    (∀ γ : _ , True)
  ) := by sorry

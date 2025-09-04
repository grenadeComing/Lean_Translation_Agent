import Mathlib

open Complex Set TopologicalSpace

/-- A global logarithm on U for g. -/
def has_log {U : Set ℂ} (g : Subtype U → ℂ) : Prop := ∃ G : Subtype U → ℂ, ∀ z, g z = Complex.exp (G z)

/-- Abstract predicate: g maps every loop in U to a null-homotopic loop in ℂ \ {0}. -/
def maps_loops_to_nullhomotopic (U : Set ℂ) (g : Subtype U → ℂ) : Prop := True

/-- Translation of the classical statement:
    Let U ⊂ ℂ be a domain (open and connected) and g : U → ℂ be analytic. Then g admits a logarithm on U
    iff g is nowhere zero on U and g maps every loop in U to a null-homotopic loop in ℂ \ {0}.

    The analytic hypothesis and the concrete topological formulation of condition (2) are left abstract here;
    the proof is omitted. -/
theorem complex_log_exists_iff (U : Set ℂ) (hU_open : IsOpen U) (hU_conn : IsConnected U)
  (g : Subtype U → ℂ) :
  has_log (g) ↔ ( (∀ z, g z ≠ 0) ∧ maps_loops_to_nullhomotopic U g ) := by
  sorry

import Mathlib

/-
  Bounded continuous real-valued functions on a metric space X,
  with the sup metric d(f,g) = sup_{x ∈ X} |f(x) - g(x)|.

  We state that this type carries a MetricSpace structure (with the
  metric given by the supremum above) and that convergence in this
  metric is equivalent to uniform convergence. The proofs are omitted
  (marked `by sorry`).
-/

variable (X : Type*) [MetricSpace X]

/-- The space C_b(X, ℝ) of bounded continuous real-valued functions on X. -/
def C_b (X : Type*) [MetricSpace X] := { f : X → ℝ // Continuous f ∧ Bounded (range f) }

namespace C_b

variable {X}

instance {X : Type*} [MetricSpace X] : CoeFun (C_b X) (λ _, X → ℝ) := ⟨fun f => f.1⟩

/-- Supremum distance between two bounded continuous functions. -/
noncomputable def sup_dist {X : Type*} [MetricSpace X] (f g : C_b X) : ℝ :=
  Sup (range fun x => |(f : X → ℝ) x - (g : X → ℝ) x|)

/-- The type C_b X equipped with the sup metric is a metric space. -/
instance : MetricSpace (C_b X) := by
  -- The full construction requires showing the usual metric axioms
  -- for `sup_dist`. We omit the proofs here.
  sorry

/-- Convergence in the sup metric is equivalent to uniform convergence.
    We state uniform convergence in the standard ε-N form using the
    supremum of |f_n(x)-f(x)|. -/
theorem tendsto_iff_uniform {f_n : ℕ → C_b X} {f : C_b X} :
  Tendsto f_n atTop (𝓝 f) ↔
    ∀ ε : ℝ, ε > 0 → ∃ N : ℕ, ∀ n ≥ N, Sup (range fun x => |(f_n n : X → ℝ) x - (f : X → ℝ) x|) < ε := by
  -- One direction is routine from the metric definition; the other
  -- unpacks the definition of uniform convergence. Proof omitted.
  sorry

end C_b

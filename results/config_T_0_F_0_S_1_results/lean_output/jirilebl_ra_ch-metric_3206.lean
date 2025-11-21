import Mathlib

/-- The type of bounded continuous real-valued functions on a metric space X. -/
def C_b (X : Type*) [MetricSpace X] : Type* := { f : X → ℝ // Continuous f ∧ Bounded (Set.range f) }

namespace C_b

variable {X : Type*} [MetricSpace X]

/-- Distance on C_b(X) given by the sup norm: d(f,g) = sup_{x ∈ X} |f x - g x|. -/
instance : Dist (C_b X) := ⟨fun f g => Sup (Set.range fun x => |(f.1 x : ℝ) - g.1 x|)⟩

/-- With the sup-distance, C_b(X) is a metric space. -/
theorem metric_space_C_b : MetricSpace (C_b X) := by sorry

/-- Convergence in the sup-metric is equivalent to uniform convergence.

    For a sequence g : ℕ → C_b X and f : C_b X one has
    (∀ ε > 0, ∃ N, ∀ n ≥ N, dist (g n) f < ε)
    ↔
    (∀ ε > 0, ∃ N, ∀ n ≥ N, ∀ x, |(g n).1 x - f.1 x| < ε). -/
theorem tendsto_iff_uniform {g : ℕ → C_b X} {f : C_b X} :
  (∀ ε : ℝ, ε > 0 → ∃ N : ℕ, ∀ n : ℕ, n ≥ N → dist (g n) f < ε) ↔
  (∀ ε : ℝ, ε > 0 → ∃ N : ℕ, ∀ n : ℕ, n ≥ N → ∀ x : X, |(g n).1 x - f.1 x| < ε) := by sorry

end C_b

import Mathlib

/-- For a covering map p : E → X, the cardinality of the fiber over the endpoints of any path in X
    is the same. -/
theorem covering.fiber_cardinal_eq_of_path {E X : Type _} [TopologicalSpace E] [TopologicalSpace X]
  (p : E → X) (hp : IsCoveringMap p) {x0 x1 : X} (γ : Path x0 x1) :
  Cardinal.mk { e : E // p e = x0 } = Cardinal.mk { e : E // p e = x1 } := by sorry

/-- If X is path connected, then there is a cardinal n (possibly infinite) such that every fiber
    of a covering map p : E → X has cardinality n. -/
theorem covering.fiber_cardinal_const_of_path_connected {E X : Type _} [TopologicalSpace E] [TopologicalSpace X]
  (p : E → X) (hp : IsCoveringMap p) (h : IsPathConnected (Set.univ : Set X)) :
  ∃ n : Cardinal, ∀ x : X, Cardinal.mk { e : E // p e = x } = n := by sorry

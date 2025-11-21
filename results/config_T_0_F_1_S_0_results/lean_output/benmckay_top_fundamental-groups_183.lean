import Mathlib

universe u

variable (π1 : ∀ {V : Type u}, SimpleGraph V -> Type u)
variable [π1_group : ∀ {V : Type u} (G : SimpleGraph V), Group (π1 (G))]
variable (IsConnected : ∀ {V : Type u}, SimpleGraph V -> Prop)

/-- Any connected finite graph has finitely generated fundamental group. -/
theorem connected_finite_graph_fundamental_group_fg {V : Type u} (G : SimpleGraph V)
  [Fintype V] (h_conn : IsConnected (G : SimpleGraph V)) :
  ∃ (α : Type u), Fintype α × (∃ (f : MonoidHom (FreeGroup α) (π1 (G))), Function.Surjective f) := by sorry

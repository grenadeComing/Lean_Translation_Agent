import Mathlib

open SimpleGraph AlgebraicTopology

variable {V : Type*} [Fintype V] (G : SimpleGraph V) (hconn : G.IsConnected)

/-- A finite connected graph has finitely generated fundamental group. -/
lemma finite_connected_graph_fundamental_group_is_finitely_generated :
  ∀ x : (G.toTop), IsFinitelyGenerated (AlgebraicTopology.fundamentalGroup (G.toTop) x) := by sorry

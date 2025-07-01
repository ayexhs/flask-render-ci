def test_home():
    response = app.test_client().get('/')
    assert response.status_code == 200
    assert b"Auto-deploy" in response.data
